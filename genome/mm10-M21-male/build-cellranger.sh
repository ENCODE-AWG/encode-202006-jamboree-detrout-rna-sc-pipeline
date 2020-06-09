#!/bin/bash

export CELLRANGER_DIR=~/cellranger-3.1.0
export PATH=$CELLRANGER_DIR:$PATH

export GENOME_ROOT=~/proj/genome
export GENOME=mm10
export ANNOTATION=M21
export SEX=male
export GENOME_TRIPLET=${GENOME}-${ANNOTATION}-${SEX}
export GENOME_DIR=${GENOME_ROOT}/${GENOME_TRIPLET}/
export GENOME_FASTA=${GENOME_DIR}mm10-M21-ercc+phix.fa
export GTF=${GENOME_DIR}gencode.vM21-tRNAs-ERCC.gff

export THREADS=32
export MEMORY=60

cellranger mkref \
     --genome ${GENOME_TRIPLET}-cellranger-3.1.0 \
     --fasta ${GENOME_FASTA} \
     --genes ${GTF} \
     --nthreads ${THREADS} \
     --memgb ${MEMORY} \
     --ref-version '${GENOME} GENCODE ${ANNOTATION}' \
