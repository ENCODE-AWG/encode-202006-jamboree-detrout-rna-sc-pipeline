#!/bin/bash -e

GENOME_DIR=~/proj/genome
PROJECT_DIR=~/proj/encode-202006-jamboree-detrout-rna-sc-pipeline
EXPERIMENT_DIR=${PROJECT_DIR}/ENCSR874BOF_e10_5_minimal_limb
FASTQ_DIR=${PROJECT_DIR}/ENCSR874BOF_e10_5_limb
ENCODE_GENOME=${PROJECT_DIR}/genome/mm10-M21_minimal-male
TARGET_DIR=${EXPERIMENT_DIR}/kallisto_em
KALLISTO_DIR=~/proj/delaney/kallisto/build/src
BUS_DIR=~/proj/delaneybustools/build/src
THREADS=16

if test \! -e ${TARGET_DIR}; then
    mkdir ${TARGET_DIR}
fi

time ${KALLISTO_DIR}/kallisto bus \
  -t ${THREADS} \
  -i ${ENCODE_GENOME}/mm10-M21_minimal-male-kallisto-0.46.2.idx \
  -o ${TARGET_DIR} \
  -x 10xv2 \
  ${FASTQ_DIR}/ENCSR874BOF_S1_L001_R1_001.fastq.gz \
  ${FASTQ_DIR}/ENCSR874BOF_S1_L001_R2_001.fastq.gz

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
  -g ${ENCODE_GENOME}/txp2gene.tsv \
  -e ${TARGET_DIR}/matrix.ec \
  -t ${TARGET_DIR}/transcripts.txt \
  ${TARGET_DIR}/output.correct.sort.bus

time ${BUS_DIR}/bustools count --em \
  -o ${TARGET_DIR}/genecount/gene \
  -g ${ENCODE_GENOME}/txp2gene.tsv \
  -e ${TARGET_DIR}/matrix.ec \
  -t ${TARGET_DIR}/transcripts.txt \
  --genecounts ${TARGET_DIR}/output.correct.sort.bus

time ${BUS_DIR}/bustools whitelist \
     -o ${TARGET_DIR}/filtered-barcodes.txt \
     ${TARGET_DIR}/output.correct.sort.bus     
