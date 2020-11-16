#!/usr/bin/python3

import pandas
import scanpy
import scipy
import anndata
import numpy
from pathlib import Path


def scanpy_load_solo_mtx(analysis_dir, mode='filtered'):
    assert mode in ['filtered', 'raw'], 'STAR Solo only produces raw or filtered files'

    analysis_dir = Path(analysis_dir)
    solo_dir = analysis_dir / 'Solo.out' / 'Gene' / mode
    solo = scanpy.read_mtx(solo_dir / 'matrix.mtx').T
    solo_vars = pandas.read_csv(solo_dir / 'features.tsv', header=None, sep='\t').values.T
    solo_obs = pandas.read_csv(solo_dir / 'barcodes.tsv', header=None, sep='\t').values.T
    solo.obs_names = solo_obs[0]
    solo.var_names = solo_vars[0]

    solo.obs['counts'] = solo.X.sum(axis=1)
    solo.obs['ngenes'] = numpy.array((solo.X > 0).sum(axis=1))

    return solo


def scanpy_load_alevin_mtx(analysis_dir, *, force_var_names=None, force_obs_names=None):
    analysis_dir = Path(analysis_dir)
    quant_dir = analysis_dir / 'alevin'
    alevin = scanpy.read_mtx(quant_dir / 'quants_mat.mtx.gz')
    alevin_vars = pandas.read_csv(quant_dir / 'quants_mat_cols.txt', header=None).values.T
    alevin_obs = pandas.read_csv(quant_dir / 'quants_mat_rows.txt', header=None).values.T
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

    alevin.obs['counts'] = alevin.X.sum(axis=1)
    alevin.obs['ngenes'] = numpy.array((alevin.X > 0).sum(axis=1))

    return alevin


def scanpy_load_kallisto_gene_mtx(analysis_dir, filter_file=None):
    analysis_dir = Path(analysis_dir)
    kallisto = scanpy.read_mtx(analysis_dir / 'gene.mtx')
    kallisto_vars = pandas.read_csv(analysis_dir / 'gene.genes.txt', header=None).values.T
    kallisto_obs = pandas.read_csv(analysis_dir / 'gene.barcodes.txt', header=None).values.T
    kallisto.obs_names = kallisto_obs[0]
    kallisto.var_names = kallisto_vars[0]

    kallisto.obs['counts'] = kallisto.X.sum(axis=1)
    kallisto.obs['ngenes'] = numpy.array((kallisto.X > 0).sum(axis=1))

    return kallisto


def build_loom(filename, matrix, quantification_name, gtf):
    import loompy
    gene_info = gtf[gtf['type'].isin(['gene', 'tRNA']) | (gtf['source'] == 'spikein')]
    transcript_info = gtf[(gtf['type'].isin(['transcript', 'tRNA'])) | (gtf['source'] == 'spikein')]

    if matrix.shape[0] == gene_info.shape[0]:
        # We have a gene matrix
        info = gene_info
        info = info.set_index('gene_id')
        feature_type = 'gene'
    elif matrix.shape[0] == transcript_info.shape[0]:
        info = transcript_info
        info = info.set_index('transcript_id')
        feature_type = 'transcript'
    else:
        raise ValueError('Unrecognized shape expected {} or {} got {}'.format(
            gene_info.shape[0],
            transcript_info.shape[0],
            matrix.shape[0],
        ))
    gene_names = []
    gene_types = []
    for feature in matrix.index:
        gene_names.append(info.loc[feature, 'gene_name'])
        gene_types.append(info.loc[feature, 'gene_type'])

    row_attrs = {
        'id': numpy.asarray(matrix.index),
        'gene_name': numpy.asarray(gene_names),
        'gene_type': numpy.asarray(gene_types),
    }
    column_attrs = {
        'experiment': numpy.asarray(matrix.columns),
    }
    file_attrs = {
        'quantification_name': quantification_name,
        'feature_type': feature_type,
    }
    loompy.create(str(filename), matrix.values, row_attrs=row_attrs, col_attrs=column_attrs, file_attrs=file_attrs)


def build_anndata(filename, matrix, quantification_name, gtf):
    import anndata
    gene_info = gtf[gtf['type'].isin(['gene', 'tRNA']) | (gtf['source'] == 'spikein')]
    transcript_info = gtf[(gtf['type'].isin(['transcript', 'tRNA'])) | (gtf['source'] == 'spikein')]

    if matrix.shape[0] == gene_info.shape[0]:
        # We have a gene matrixCell
        info = gene_info
        info = info.set_index('gene_id')
        feature_type = 'gene'
    elif matrix.shape[0] == transcript_info.shape[0]:
        info = transcript_info
        info = info.set_index('transcript_id')
        feature_type = 'transcript'
    else:
        raise ValueError('Unrecognized shape expected {} or {} got {}'.format(
            gene_info.shape[0],
            transcript_info.shape[0],
            matrix.shape[0],
        ))
    gene_names = []
    gene_types = []
    for feature in matrix.index:
        gene_names.append(info.loc[feature, 'gene_name'])
        gene_types.append(info.loc[feature, 'gene_type'])

    adata = anndata.AnnData(matrix.T)
    adata.var['gene_symbol'] = gene_names
    adata.var['gene_type'] = gene_types
    adata.uns['quantification_name'] = quantification_name
    adata.uns['feature_type'] = feature_type

    adata.write_h5ad(filename)
