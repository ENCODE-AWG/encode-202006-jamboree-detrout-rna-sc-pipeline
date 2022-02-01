#!/bin/bash

set -e

PROJECT_DIR=~/proj/encode-202006-jamboree-detrout-rna-sc-pipeline
GENOME_DIR=${PROJECT_DIR}/genome/mm10-M21_minimal-male/
EXPERIMENT_DIR=${PROJECT_DIR}/ENCSR874BOF_e10_5_minimal_limb
ENCODE_GENOME=${PROJECT_DIR}/genome/mm10-M21_minimal-male
TARGET_DIR=${EXPERIMENT_DIR}/alevin

if test \! -e ${TARGET_DIR}; then
    mkdir ${TARGET_DIR}
fi

SALMON=salmon-container/salmon-unstable.simg

time singularity run ${SALMON} alevin \
  -l ISR \
  -1 ${EXPERIMENT_DIR}/ENCSR874BOF_S1_L001_R2_001.fastq.gz \
  -2 ${EXPERIMENT_DIR}/ENCSR874BOF_S1_L001_R1_001.fastq.gz \
  --chromium \
  -i ${GENOME_DIR}/salmon_index \
  -p 16 \
  -o ${ANALYSIS_DIR}/alevin_output \
  --tgMap ${GENOME_DIR}/txp2gene.tsv
