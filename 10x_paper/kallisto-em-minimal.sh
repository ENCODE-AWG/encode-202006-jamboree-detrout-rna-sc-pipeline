#!/bin/bash -e

RUN=$1
shift
FASTQS=$@


GENOME_DIR=~/proj/genome
PROJECT_DIR=~/proj/encode-202006-jamboree-detrout-rna-sc-pipeline
ENCODE_GENOME_DIR=${PROJECT_DIR}/genome/mm10-M21_minimal-male
ENCODE_GENOME=${ENCODE_GENOME_DIR}/mm10-M21_minimal-male-kallisto-0.46.2.idx
TARGET_DIR=${PROJECT_DIR}/10x_paper/kallisto_em_minimal/${RUN}
KALLISTO_DIR=~/proj/kallisto/build/src
BUS_DIR=~/proj/bustools/build/src
THREADS=8

if test \! -e ${TARGET_DIR}; then
    mkdir -p ${TARGET_DIR}
fi

time ${KALLISTO_DIR}/kallisto bus \
  -t ${THREADS} \
  -i ${ENCODE_GENOME} \
  -o ${TARGET_DIR} \
  -x 10xv2 \
  ${FASTQS}

time ${BUS_DIR}/bustools correct \
  -w ${PROJECT_DIR}/10xv2_allowlist.txt \
  -o ${TARGET_DIR}/output.correct.bus \
  ${TARGET_DIR}/output.bus

for d in ${TARGET_DIR}/{eqcount,genecount}; do
    if test \! -e ${d} ; then 
        mkdir ${d}
    fi           
done
         
time ${BUS_DIR}/bustools sort \
  -t ${THREADS} \
  -o ${TARGET_DIR}/output.correct.sort.bus \
  ${TARGET_DIR}/output.correct.bus

# Unfiltered list
time ${BUS_DIR}/bustools count --em \
  -o ${TARGET_DIR}/eqcount/tcc \
  -g ${ENCODE_GENOME_DIR}/txp2gene.tsv \
  -e ${TARGET_DIR}/matrix.ec \
  -t ${TARGET_DIR}/transcripts.txt \
  ${TARGET_DIR}/output.correct.sort.bus

time ${BUS_DIR}/bustools count --em \
  -o ${TARGET_DIR}/genecount/gene \
  -g ${ENCODE_GENOME_DIR}/txp2gene.tsv \
  -e ${TARGET_DIR}/matrix.ec \
  -t ${TARGET_DIR}/transcripts.txt \
  --genecounts ${TARGET_DIR}/output.correct.sort.bus

time ${BUS_DIR}/bustools whitelist \
     -o ${TARGET_DIR}/filtered-barcodes.txt \
     ${TARGET_DIR}/output.correct.sort.bus     
