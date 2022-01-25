from io import StringIO, BytesIO
import csv
import codecs
import tarfile


def create_metadata():
    metadata = {
        "type": "MatrixMarketGeneArchive_v1",
        "experiment_accession": "ENCSRxxxxx",
        "description": "I'm a teapot",
        "library_accession": "ENCLBxxxxx",
        "analysis_step_version": "菅野よう子",
    }

    return metadata


def write_metadata(config, outstream):
    writer = csv.writer(outstream, delimiter="\t")
    writer.writerow(["name", "value"])
    for key in config:
        writer.writerow([key, config[key]])
    return outstream

metadata = create_metadata()
metadata_buffer = StringIO()
write_metadata(metadata, metadata_buffer)

with tarfile.open("test.tar.gz", "w:gz") as archive:
    info = tarfile.TarInfo("manifest.tsv")
    #info.size = len(metadata_buffer.getvalue())
    #assert info.size == len(), "{} {}".format(info.size, len(metadata_buffer.getvalue().encode("utf-8")))
    byte_buffer = BytesIO(metadata_buffer.getvalue().encode("utf-8"))
    info.size = len(byte_buffer.getvalue())
    archive.addfile(info, byte_buffer)
