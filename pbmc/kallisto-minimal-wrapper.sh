#!/bin/bash -e
            
GENOME_DIR=~/proj/genome
PROJECT_DIR=~/proj/encode-202006-jamboree-detrout-rna-sc-pipeline
ENCODE_GENOME=${PROJECT_DIR}/genome/mm10-M21_minimal-male
EXPERIMENT_DIR=${PROJECT_DIR}/pbmc
FASTQ_DIR=${EXPERIMENT_DIR}/pbmc3k_fastqs
TARGET_DIR=${EXPERIMENT_DIR}/kallisto-pbmc3k-minimal
KALLISTO_DIR=~/proj/kallisto/build/src
BUS_DIR=~/proj/bustools/build/src
THREADS=16


BUSTOOLS_EM_FLAG=
TARGET_DIR=
while [[ $# -gt 0 ]]
do
    arg="$1"
    case $arg in
        -e|--em)
            BUSTOOLS_EM_FLAG=--em
            shift
            ;;
        --target)
            TARGET_DIR="$2"
            shift
            shift
            ;;
        *)
            shift
            ;;
    esac
done

if test \! -e ${TARGET_DIR}; then
    mkdir ${TARGET_DIR}
fi


time ${KALLISTO_DIR}/kallisto bus \
  -t ${THREADS} \
  -i ${ENCODE_GENOME}/mm10-M21_minimal-male-kallisto-0.46.2.idx \
  -o ${TARGET_DIR} \
  -x 10xv2 \
  ${FASTQ_DIR}/read-RA_si-ACGCGGAA_lane-001-chunk-001.fastq.gz \
  ${FASTQ_DIR}/read-RA_si-ACGCGGAA_lane-002-chunk-000.fastq.gz \
  ${FASTQ_DIR}/read-RA_si-CGCTATCC_lane-001-chunk-001.fastq.gz \
  ${FASTQ_DIR}/read-RA_si-CGCTATCC_lane-002-chunk-000.fastq.gz \
  ${FASTQ_DIR}/read-RA_si-GTTGCATG_lane-001-chunk-001.fastq.gz \
  ${FASTQ_DIR}/read-RA_si-GTTGCATG_lane-002-chunk-000.fastq.gz \
  ${FASTQ_DIR}/read-RA_si-TAAATCGT_lane-001-chunk-001.fastq.gz \
  ${FASTQ_DIR}/read-RA_si-TAAATCGT_lane-002-chunk-000.fastq.gz


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
time ${BUS_DIR}/bustools count \
  -o ${TARGET_DIR}/eqcount/tcc \
  -g ${ENCODE_GENOME}/txp2gene.tsv \
  -e ${TARGET_DIR}/matrix.ec \
  -t ${TARGET_DIR}/transcripts.txt \
  ${TARGET_DIR}/output.correct.sort.bus

time ${BUS_DIR}/bustools count \
  -o ${TARGET_DIR}/genecount/gene \
  -g ${ENCODE_GENOME}/txp2gene.tsv \
  -e ${TARGET_DIR}/matrix.ec \
  -t ${TARGET_DIR}/transcripts.txt \
  --genecounts ${TARGET_DIR}/output.correct.sort.bus

time ${BUS_DIR}/bustools whitelist \
     -o ${TARGET_DIR}/filtered-barcodes.txt \
     ${TARGET_DIR}/output.correct.sort.bus     
