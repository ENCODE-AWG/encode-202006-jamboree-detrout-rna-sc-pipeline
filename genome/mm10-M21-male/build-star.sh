#!/bin/bash

export CELLRANGER_DIR=~/proj/illumina/cellranger-3.1.0
export PATH=$CELLRANGER_DIR:$PATH

export GENOME_ROOT=${HOME}/proj/genome
export ENCODE_ROOT=${HOME}/proj/encode-202006-jamboree-detrout-rna-sc-pipeline/genome
export GENOME=mm10
export ANNOTATION=M21
export SEX=male
export GENOME_TRIPLET=${GENOME}-${ANNOTATION}-${SEX}
export GENOME_DIR=${GENOME_ROOT}/${GENOME_TRIPLET}
export GENOME_FASTA=${GENOME_DIR}/mm10-M21-ercc+phix.fa
#export GTF=${GENOME_DIR}gencode.vM21-tRNAs-ERCC.gff
export GTF=${ENCODE_ROOT}/mm10-M21-male/gencode.vM21-tRNAs-exon-ERCC.gff

export THREADS=20
export MEMORY=60

~/proj/STAR/bin/Linux_x86_64/STAR --version

~/proj/STAR/bin/Linux_x86_64/STAR  \
    --runThreadN ${THREADS} \
    --runMode genomeGenerate \
    --genomeDir ${ENCODE_ROOT}/${GENOME_TRIPLET} \
    --genomeFastaFiles ${GENOME_FASTA} \
    --sjdbGTFfile ${GTF} \

