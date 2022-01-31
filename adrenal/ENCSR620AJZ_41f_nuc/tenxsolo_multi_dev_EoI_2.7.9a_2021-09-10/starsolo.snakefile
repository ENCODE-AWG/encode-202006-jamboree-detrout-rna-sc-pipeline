import netrc
import os
from io import BytesIO
from pathlib import Path
import stat
import tarfile
import time
import hashlib

# for h5ad conversion
import numpy
import pandas


MISSING_ERROR = "Please define before upload"

CONFIG_JSON = Path("config.json")
CONFIG_YAML = Path("config.yaml")

SOLO_ROOT = Path("Solo.out")
MULTIREAD_NAME = {
    "Unique": "matrix.mtx",
    "Rescue": "UniqueAndMult-Rescue.mtx",
    "EM": "UniqueAndMult-EM.mtx",
}

if CONFIG_JSON.exists():
    import json
    with open("config.json", "rt") as instream:
        config = json.load(instream)
elif CONFIG_YAML.exists():
    import yaml
    with open("config.yaml", "rt") as instream:
        config = yaml.load(instream)
else:
    raise RuntimeError("No recognized configuration file")


for key in ['genome_dir', 'allow_list', 'star_command']:
    config[key] = Path(config[key]).expanduser()

authdb = netrc.netrc()
username, _, password = authdb.hosts['www.encodeproject.org']
auth = (username, password)


def generate_read_argument(config, read):
    argument = []
    read_num = int(read[-1])
    for accession in config[read]:
        argument.append(
            "{accession}_R{read_num}.fastq.gz".format(
                accession=accession,
                read_num=read_num,
            ))
    return argument


def load_cache_genes(gtf_cache):
    store = pandas.HDFStore(gtf_cache, "r")
    gtf = store.select('/gtf', where='type == gene', columns=['gene_id', 'gene_name', 'gene_type'])
    store.close()
    return gtf


def add_gene_name_and_type(adata, gtf_cache):
    gtf = load_cache_genes(gtf_cache)

    gene_id_to_name = {}
    gene_id_to_type = {}
    for i, row in gtf.iterrows():
        gene_id_to_name[row.gene_id] = row.gene_name
        gene_id_to_type[row.gene_id] = row.gene_type

    adata.var['gene_name'] = [gene_id_to_name.get(x, x) for x in adata.var_names]
    adata.var['gene_type'] = [gene_id_to_type.get(x, x) for x in adata.var_names]
    return adata


def scanpy_load_solo278a_mtx(analysis_dir, genome_cache, quantification="Gene", mode="filtered"):
    import scanpy

    assert mode in ["filtered", "raw"], "STAR Solo only produces raw or filtered files"
    assert quantification in ["Gene", "GeneFull", "SJ"]

    analysis_dir = Path(analysis_dir)
    feature_name = "features.tsv"

    solo_dir = analysis_dir / "Solo.out" / quantification / mode
    solo = scanpy.read_mtx(solo_dir / "matrix.mtx").T
    solo_vars = pandas.read_csv(
        solo_dir / feature_name, header=None, sep="\t"
    ).values.T
    solo_obs = pandas.read_csv(
        solo_dir / "barcodes.tsv", header=None, sep="\t"
    ).values.T
    solo.obs_names = solo_obs[0]
    solo.var_names = solo_vars[0]

    solo.obs["counts"] = solo.X.sum(axis=1)
    solo.obs["ngenes"] = numpy.array((solo.X > 0).sum(axis=1))

    add_gene_name_and_type(solo, genome_cache)
    return solo


def compute_md5sums(filenames):
    BLOCK = 2 ** 20
    results = []
    for f in filenames:
        with open(f, "rb") as instream:
            md5 = hashlib.md5()
            readable = instream.readable()
            while readable:
                read_block = instream.read(BLOCK)
                if len(read_block) == 0:
                    readable = False
                else:
                    md5.update(read_block)
        results.append((f, md5.hexdigest()))
    return results


def create_metadata(config, md5s):
    metadata = {
        "type": "MatrixMarketGeneArchive_v1",
        "experiment_accession": config.get("experiment_accession", MISSING_ERROR),
        "description": config.get("description", MISSING_ERROR),
        "library_accession": config.get("library_accession", MISSING_ERROR),
        "analysis_step_version": config.get("analysis_step_version", MISSING_ERROR),
    }

    for filename, md5 in md5s:
        metadata[filename] = "md5sum:{}".format(md5)

    series = pandas.Series(metadata)
    series.index.name = "name"
    series.name = "value"
    return series


def make_list_of_archive_files(solo_root, quantification="GeneFull", multiread="Unique"):
    archive_files = []

    if quantification in ("Gene", "GeneFull"):
        archive_files.append(solo_root / quantification / "filtered" / "barcodes.tsv")

    archive_files.append(solo_root / quantification / "raw" / "barcodes.tsv")
    archive_files.append(solo_root / quantification / "raw" / "features.tsv")

    if quantification == "SJ":
        if multiread != "Unique":
            raise ValueError("Splice junctions do not support multread assignment")

    archive_files.append(solo_root / quantification / "raw" / MULTIREAD_NAME[multiread])
    return archive_files


def update_tarinfo(info, filename):
    stat_info = os.stat(filename)
    info.size = stat_info[stat.ST_SIZE]
    info.mode = stat_info[stat.ST_MODE]
    info.mtime = time.time()
    info.uid = stat_info[stat.ST_UID]
    info.gid = stat_info[stat.ST_GID]
    info.type = tarfile.REGTYPE


def archive_star(solo_root, quantification="GeneFull", multiread="Unique"):
    print("archive_star", solo_root, quantification, multiread)
    assert quantification in ["Gene", "GeneFull", "GeneFull_Ex50pAS", "SJ"]
    assert multiread in ["Unique", "Rescue", "EM"]

    archive_files = make_list_of_archive_files(solo_root, quantification, multiread)

    md5s = compute_md5sums(archive_files)
    manifest = create_metadata(config, md5s)

    manifest_buffer = BytesIO(manifest.to_csv(sep="\t").encode("utf-8"))

    tar_name = "{}_{}.tar.gz".format(quantification, multiread)
    with tarfile.open(tar_name, "w:gz") as archive:
        info = tarfile.TarInfo("manifest.tsv")
        update_tarinfo(info, archive_files[0])
        info.size = len(manifest_buffer.getvalue())
        archive.addfile(info, manifest_buffer)
        for filename in archive_files:
            info = tarfile.TarInfo(str(filename.relative_to(solo_root)))
            update_tarinfo(info, filename)
            with open(filename, "rb") as instream:
                archive.addfile(info, instream)


def get_gene_model():
    return "GeneFull_Ex50pAS" if config['include_intron'] else "Gene"


rule ALL:
    input:
        "Log.final.out",
        "GeneFull_Unique.tar.gz",
        "GeneFull_EM.tar.gz",
        "SJ_Unique.tar.gz",
#        "{accession}_filtered_genefull.h5ad".format(accession=config['accession']),


rule get_fastq:
    output:
        temp("{fastq}.fastq.gz")
    threads: 1
    run:
        shell("ln -s ../{output} {output}")
        #shell("curl -L -o {params.accession}_S1_L00{wildcards.lane}_R{wildcards.read}.fastq.gz https://{params.username}:{params.password}@www.encodeproject.org/files/{wildcards.accession}/@@download/{wildcards.accession}.fastq.gz")


rule star_solo:
    input:
        sequence_reads = generate_read_argument(config, "read2"),
        barcode_reads = generate_read_argument(config, "read1"),
        genome_index = config['genome_dir'],
        allow_list = config['allow_list'],
    params:
        star_command = config['star_command'],
        stranded = config['stranded'],
        gene_model = get_gene_model(),
        sequence_reads = ",".join(generate_read_argument(config, "read2")),
        barcode_reads = ",".join(generate_read_argument(config, "read1")),
        umi_length = int(config["umi_length"]),
    resources:
        mem_mb = config['mem_mb'],
        mem_bytes = config['mem_mb'] * (2 ** 20),
        disk_mb = config['disk_mb'],
    threads: 16
    output:
        aligned_bam = "Aligned.sortedByCoord.out.bam",
        log_final = "Log.final.out",
        log_progress = "Log.progress.out",
        log_out = "Log.out",
        splice_junctions = "SJ.out.tab",
        barcode_stats = SOLO_ROOT / "Barcodes.stats",
        star_tmp = temp(directory("_STARtmp")),
        features_stats = SOLO_ROOT / get_gene_model() / "Features.stats",
        umis = SOLO_ROOT / get_gene_model() / "UMIperCellSorted.txt",
        filtered_barcodes = SOLO_ROOT / get_gene_model() / "filtered" / "barcodes.tsv",
        filtered_features = SOLO_ROOT / get_gene_model() / "filtered" / "features.tsv",
        filtered_matrix = SOLO_ROOT / get_gene_model() / "filtered" / "matrix.mtx",
        raw_barcodes = SOLO_ROOT / get_gene_model() / "raw" / "barcodes.tsv",
        raw_features = SOLO_ROOT / get_gene_model() / "raw" / "features.tsv",
        raw_unique_matrix = SOLO_ROOT / get_gene_model() / "raw" / "matrix.mtx",
        raw_rescue_matrix = SOLO_ROOT / get_gene_model() / "raw" / "UniqueAndMult-Rescue.mtx",
        raw_em_matrix = SOLO_ROOT / get_gene_model() / "raw" / "UniqueAndMult-EM.mtx",
        sj_barcodes = SOLO_ROOT / "SJ" / "raw" / "barcodes.tsv",
        sj_features = SOLO_ROOT / "SJ" / "raw" / "features.tsv",
        sj_matrix = SOLO_ROOT / "SJ" / "raw" / "matrix.mtx",
    shell:
#           --quantMode TranscriptomeSAM  \ # Turns on outputing transcript bam file
        "{params.star_command} --genomeDir {input.genome_index} \
           --readFilesIn {params.sequence_reads} {params.barcode_reads} \
           --readFilesCommand zcat \
           --runThreadN {threads} \
           --genomeLoad NoSharedMemory \
           --outFilterMultimapNmax 20 \
           --alignSJoverhangMin 8 \
           --alignSJDBoverhangMin 1 \
           --outFilterMismatchNmax 999 \
           --outFilterMismatchNoverReadLmax 0.04 \
           --alignIntronMin 20 \
           --alignIntronMax 1000000 \
           --alignMatesGapMax 1000000 \
           --outSAMheaderCommentFile COfile.txt \
           --outSAMheaderHD @HD VN:1.4 SO:coordinate \
           --outSAMunmapped Within \
           --outFilterType BySJout \
           --outSAMattributes NH HI AS NM MD CB CR UB UR \
           --outSAMstrandField intronMotif \
           --outSAMtype BAM SortedByCoordinate \
           --sjdbScore 1 \
           --clipAdapterType CellRanger4 \
           --outFilterScoreMin 30 \
           --soloCBmatchWLtype 1MM_multi_Nbase_pseudocounts \
           --soloUMIdedup 1MM_CR \
           --soloUMIfiltering MultiGeneUMI_CR \
           --soloType CB_UMI_Simple \
           --soloCellFilter EmptyDrops_CR \
           --soloUMIlen {params.umi_length} \
           --soloCBwhitelist {input.allow_list} \
           --soloStrand {params.stranded} \
           --soloFeatures {params.gene_model} SJ \
           --soloMultiMappers Unique Rescue EM \
           --limitBAMsortRAM {resources.mem_bytes} \
           --outTmpDir {output.star_tmp} \
           --outFileNamePrefix ./ \
"
# my best guess for what we want but needs star 2.7.8
# both Gene & GeneFull or just one?
#           --soloFeatures SJ {get_gene_model()} \


# Needs 2.7.9?
#           --soloMultiMappers Unique PropUniq \

rule to_archive:
    input:
        # At least snakemake 5.4.0 wants input files to be a list of strings
        # make_list_of_archive_files returns a list of Paths so we need to
        # convert them
        lambda wildcards: [str(x) for x in make_list_of_archive_files(SOLO_ROOT, wildcards.gene_model, wildcards.multiread)]
    output:
        "{gene_model}_{multiread}.tar.gz"
    run:
        archive_star(SOLO_ROOT, wildcards.gene_model, wildcards.multiread)

rule to_h5ad:
    input:
        barcodes = SOLO_ROOT / get_gene_model() / "filtered" / "barcodes.tsv",
        features = SOLO_ROOT / get_gene_model() / "filtered" / "features.tsv",
        matrix = SOLO_ROOT / get_gene_model() / "filtered" / "matrix.mtx",
        #raw_barcodes = SOLO_ROOT / "Gene" / "raw" / "barcodes.tsv",
        #raw_features = SOLO_ROOT / "Gene" / "raw" / "features.tsv",
        #raw_matrix = SOLO_ROOT / "Gene" / "raw" / "matrix.mtx",
    params:
        genome_cache = config["genome_dir"] / (config["genome_dir"].name + ".h5"),
    output:
        "{accession}_filtered_genefull.h5ad".format(accession=config["experiment_accession"]),
    run:
        adata = scanpy_load_solo278a_mtx(Path("."), params.genome_cache, quantification="GeneFull", mode="filtered")
        adata.write(output[0])
