#!/usr/bin/python3

import pandas
import scanpy
import scipy
import anndata
import numpy
from matplotlib import pyplot
from pathlib import Path


def scanpy_load_solo_mtx(analysis_dir, *, gene="Gene", mode="filtered", multi="matrix.mtx"):
    #assert mode in ["filtered", "raw"], "STAR Solo only produces raw or filtered files"
    assert gene in ["SJ", "Gene", "GeneFull_Ex50pAS", "GeneFull"]
    assert multi in ["matrix.mtx", "UniqueAndMult-EM.mtx"]

    analysis_dir = Path(analysis_dir)
    solo_dir = analysis_dir / "Solo.out" / gene / mode
    solo = scanpy.read_mtx(solo_dir / multi).T
    solo_vars = pandas.read_csv(
        solo_dir / "features.tsv", header=None, sep="\t"
    ).values.T
    solo_obs = pandas.read_csv(
        solo_dir / "barcodes.tsv", header=None, sep="\t"
    ).values.T
    solo.obs_names = solo_obs[0]
    solo.var_names = solo_vars[0]

    solo.obs["counts"] = solo.X.sum(axis=1)
    solo.obs["ngenes"] = numpy.array((solo.X > 0).sum(axis=1))

    return solo


def scanpy_load_alevin_mtx(analysis_dir, *, force_var_names=None, force_obs_names=None):
    analysis_dir = Path(analysis_dir)
    quant_dir = analysis_dir / "alevin"
    alevin = scanpy.read_mtx(quant_dir / "quants_mat.mtx.gz")
    alevin_vars = pandas.read_csv(
        quant_dir / "quants_mat_cols.txt", header=None
    ).values.T
    alevin_obs = pandas.read_csv(
        quant_dir / "quants_mat_rows.txt", header=None
    ).values.T
    alevin.obs_names = alevin_obs[0]
    alevin.var_names = alevin_vars[0]

    alevin_df = alevin.to_df()
    if force_obs_names is not None:
        alevin_df = alevin_df.reindex(force_obs_names).fillna(0)
    else:
        force_obs_names = alevin_obs[0]

    if force_var_names is not None:
        alevin_df = alevin_df.T.reindex(force_var_names).T.fillna(0)
    else:
        force_var_names = alevin_vars[0]

    alevin = anndata.AnnData(X=scipy.sparse.csr_matrix(alevin_df))
    alevin.obs_names = force_obs_names
    alevin.var_names = force_var_names

    alevin.obs["counts"] = alevin.X.sum(axis=1)
    alevin.obs["ngenes"] = numpy.array((alevin.X > 0).sum(axis=1))

    return alevin


def scanpy_load_kallisto_gene_mtx(analysis_dir, filter_file=None):
    analysis_dir = Path(analysis_dir)
    kallisto = scanpy.read_mtx(analysis_dir / "gene.mtx")
    kallisto_vars = pandas.read_csv(
        analysis_dir / "gene.genes.txt", header=None
    ).values.T
    kallisto_obs = pandas.read_csv(
        analysis_dir / "gene.barcodes.txt", header=None
    ).values.T
    kallisto.obs_names = kallisto_obs[0]
    kallisto.var_names = kallisto_vars[0]

    if filter_file is not None:
        barcodes = load_barcode_list(filter_file)
        kallisto = kallisto[barcodes].copy()

    kallisto.obs["counts"] = kallisto.X.sum(axis=1)
    kallisto.obs["ngenes"] = numpy.array((kallisto.X > 0).sum(axis=1))

    return kallisto


def load_barcode_list(filename):
    with open(filename) as instream:
        barcodes = list(set([line.strip() for line in instream]))
    return barcodes


def build_loom(filename, matrix, quantification_name, gtf):
    import loompy

    gene_info = gtf[gtf["type"].isin(["gene", "tRNA"]) | (gtf["source"] == "spikein")]
    transcript_info = gtf[
        (gtf["type"].isin(["transcript", "tRNA"])) | (gtf["source"] == "spikein")
    ]

    if matrix.shape[0] == gene_info.shape[0]:
        # We have a gene matrix
        info = gene_info
        info = info.set_index("gene_id")
        feature_type = "gene"
    elif matrix.shape[0] == transcript_info.shape[0]:
        info = transcript_info
        info = info.set_index("transcript_id")
        feature_type = "transcript"
    else:
        raise ValueError(
            "Unrecognized shape expected {} or {} got {}".format(
                gene_info.shape[0],
                transcript_info.shape[0],
                matrix.shape[0],
            )
        )
    gene_names = []
    gene_types = []
    for feature in matrix.index:
        gene_names.append(info.loc[feature, "gene_name"])
        gene_types.append(info.loc[feature, "gene_type"])

    row_attrs = {
        "id": numpy.asarray(matrix.index),
        "gene_name": numpy.asarray(gene_names),
        "gene_type": numpy.asarray(gene_types),
    }
    column_attrs = {
        "experiment": numpy.asarray(matrix.columns),
    }
    file_attrs = {
        "quantification_name": quantification_name,
        "feature_type": feature_type,
    }
    loompy.create(
        str(filename),
        matrix.values,
        row_attrs=row_attrs,
        col_attrs=column_attrs,
        file_attrs=file_attrs,
    )


def build_anndata(filename, matrix, quantification_name, gtf):
    import anndata

    gene_info = gtf[gtf["type"].isin(["gene", "tRNA"]) | (gtf["source"] == "spikein")]
    transcript_info = gtf[
        (gtf["type"].isin(["transcript", "tRNA"])) | (gtf["source"] == "spikein")
    ]

    if matrix.shape[0] == gene_info.shape[0]:
        # We have a gene matrixCell
        info = gene_info
        info = info.set_index("gene_id")
        feature_type = "gene"
    elif matrix.shape[0] == transcript_info.shape[0]:
        info = transcript_info
        info = info.set_index("transcript_id")
        feature_type = "transcript"
    else:
        raise ValueError(
            "Unrecognized shape expected {} or {} got {}".format(
                gene_info.shape[0],
                transcript_info.shape[0],
                matrix.shape[0],
            )
        )
    gene_names = []
    gene_types = []
    for feature in matrix.index:
        gene_names.append(info.loc[feature, "gene_name"])
        gene_types.append(info.loc[feature, "gene_type"])

    adata = anndata.AnnData(matrix.T)
    adata.var["gene_symbol"] = gene_names
    adata.var["gene_type"] = gene_types
    adata.uns["quantification_name"] = quantification_name
    adata.uns["feature_type"] = feature_type

    adata.write_h5ad(filename)


def lighten_color(color, amount=0.5):
    """
    Lightens the given color by multiplying (1-luminosity) by the given amount.
    Input can be matplotlib color string, hex string, or RGB tuple.
    Examples:
    >> lighten_color('g', 0.3)
    >> lighten_color('#F034A3', 0.6)
    >> lighten_color((.3,.55,.1), 0.5)
    """
    import matplotlib.colors as mc
    import colorsys

    c = mc.cnames.get(color, color)
    c = colorsys.rgb_to_hls(*mc.to_rgb(c))
    return colorsys.hls_to_rgb(c[0], 1 - amount * (1 - c[1]), c[2])


def plot_retained_barcodes(raw, filtered, colormap, label, xlim=(1, 10e5), ylim=(1, 10e4)):
    alpha = 0.8
    gridalpha = 0.5

    f = pyplot.figure(figsize=(8, 6))
    ax = f.add_subplot(1, 1, 1)

    dropped_barcodes = list(set(raw.obs_names).difference(filtered.obs_names))
    only_dropped = raw[dropped_barcodes]
    ax.scatter(
        only_dropped.obs["counts"],
        only_dropped.obs["ngenes"],
        s=1,
        alpha=alpha,
        color=lighten_color(colormap[label]),
    )
    ax.scatter(
        filtered.obs["counts"],
        filtered.obs["ngenes"],
        s=1,
        alpha=alpha,
        color=colormap[label],
    )
    ax.set_title(label)
    ax.set_xlim(*xlim)
    ax.set_ylim(*ylim)
    ax.set_xlabel("barcode counts")
    ax.set_ylabel("genes detected")
    ax.set_xscale("log")
    ax.set_yscale("log", nonpositive="clip")
    ax.grid(
        color="dimgrey", linestyle="-", linewidth=0.5, which="both", alpha=gridalpha
    )
    return f


def compute_spearman_anndata(left, right):
    """Compute spearman on AnnData using scipy.

    Does need memory
    """
    assert left.shape == right.shape, "Shapes must be the same"
    obs_names = left.obs_names
    if isinstance(left, anndata._core.anndata.AnnData):
        left = left.X.todense()
    if isinstance(right, anndata._core.anndata.AnnData):
        right = right.X.todense()

    #print(left.shape[0])
    #print(left[0].shape)
    #print(right[0].shape)
    cors=[]
    for i in range(left.shape[0]):
        cors.append(scipy.stats.spearmanr(left[:,i], right[:,i])[0])
    cors = pandas.Series(cors, index=obs_names)
    #[~numpy.isnan(cors)]
    return cors
