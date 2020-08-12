"""Utility functions that could be shared between notebooks
"""
import os
import pandas


def check_triplet(genome_triplet):
    """check genome_triplet is a known value

    Just expanding user values in a filename is quite unsafe
    """
    assert genome_triplet in [
        'mm10-M21-male',
    ]


def load_gtf(genome_triplet):
    check_triplet(genome_triplet)
    store = pandas.HDFStore(os.path.expanduser(f'~/proj/genome/{genome_triplet}/{genome_triplet}.h5'))
    gtf = store[store.keys()[0]]
    store.close()
    return gtf


def build_gene_id(gtf):
    gene_id_name = {}
    for i, row in gtf[['gene_id', 'gene_name']].iterrows():
        gene_name = row.gene_name
        if pandas.isnull(gene_name):
            gene_name = row.gene_id
        if pandas.isnull(gene_name):
            gene_name = str(row.gene_id)
        gene_id_name[row.gene_id] = gene_name
    return gene_id_name


def get_gene_id_to_name(genome_triplet):
    check_triplet(genome_triplet)
    filename = f'{genome_triplet}_id2name.tsv'
    if not os.path.exists(filename):
        gtf = load_gtf(genome_triplet)
        gene_id_name = build_gene_id(gtf)
        with open(filename, 'wt') as outstream:
            for key in gene_id_name:
                outstream.write(f'{key}\t{gene_id_name[key]}\n')
    else:
        with open(filename, 'rt') as instream:
            gene_id_name = {}
            for line in instream:
                key, value = line.rstrip().split('\t')
                gene_id_name[key] = value

    return gene_id_name
