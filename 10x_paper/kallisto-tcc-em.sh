#!/bin/bash

set -e

# My kallisto and bustools branches:
# https://github.com/Yenaled/bustools/tree/smart-seq3
# https://github.com/Yenaled/kallisto/tree/smart-seq3# bustools count for UMI reads (note: use -m multimapping option to avoid discarding EC's that map to multiple genes)

RUN=$1

GENOME_DIR=~/proj/genome
PROJECT_DIR=~/proj/encode-202006-jamboree-detrout-rna-sc-pipeline
ENCODE_GENOME_DIR=${PROJECT_DIR}/genome/mm10-M21-male
ENCODE_GENOME=${ENCODE_GENOME_DIR}/mm10-M21-male-kallisto-0.46.2.idx
TARGET_DIR=${PROJECT_DIR}/10x_paper/kallisto_em/${RUN}
#
KALLISTO_DIR=~/proj/delaney/kallisto/build/src
BUS_DIR=~/proj/delaney/bustools/build/src
THREADS=8


# This is the code block that made the transcript compatibility
# branch.
#time ${BUS_DIR}/bustools count --em \
#  -o ${TARGET_DIR}/eqcount/tcc \
#  -g ${ENCODE_GENOME_DIR}/txp2gene.tsv \
#  -e ${TARGET_DIR}/matrix.ec \
#  -t ${TARGET_DIR}/transcripts.txt \
#  ${TARGET_DIR}/output.correct.sort.bus


if [ \! -e ${TARGET_DIR}/quant_umi/output.mtx ]; then
  time ${BUS_DIR}/bustools count --em \
    -o ${TARGET_DIR}/quant_umi/ \
    -t ${TARGET_DIR}/transcripts.txt \
    -g ${ENCODE_GENOME_DIR}/txp2gene.tsv \
    -e ${TARGET_DIR}/matrix.ec \
    ${TARGET_DIR}/output.correct.sort.bus
fi
     
# kallisto quant-tcc (note: takes a long time because have to do EM for all cells)

time ${KALLISTO_DIR}/kallisto quant-tcc -t ${THREADS} \
  -o ${TARGET_DIR}/quant_tcc/ \
  -T ${TARGET_DIR}/transcripts.txt \
  -e ${TARGET_DIR}/eqcount/tcc.ec.txt \
  -g ${ENCODE_GENOME_DIR}/txp2gene.tsv \
  ${TARGET_DIR}/quant_umi/output.mtx

# bustools count discards UMI that maps to multiple genes
# ATTAAA geneA
# ATTAAA geneB
# ^Both will be discarded, but run the following command:
# bustools count --umi-gene [...]
# And now both will be counted as two separate molecules (one for gene A, one for gene B)# In the case of:
# ATTAAA geneA
# ATTAAA geneA,geneB
# ^This will be counted as one molecule corresponding to gene A if --umi-gene is used
