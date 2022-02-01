#!/bin/bash

pushd ENCLB222TBQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB446NDM
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB522YKN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB370RDJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB372EFL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB960KQP
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB947QNC
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB590ZKY
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB467NXU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB219PGK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB915HHW
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB549HEK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB284KCH
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB215OBG
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB091ABT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB841LXQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB695TFS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB619PRE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB277ISM
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB479LPQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB025AKK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB910PXF
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB093XMH
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB871LRF
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB300QWH
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB780ICU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB369MQU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB704BQZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB096QSW
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB474TVI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB931SDQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB352VYR
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB018LIS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB704KJI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB960QQO
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB266USG
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB651BAC
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB410GHL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB612IGH
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB826MTF
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB831TSZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB687SMG
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB633TPK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB004ADO
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB621HLJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB994DPH
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB287KPE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB020CON
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB868KAC
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB514JPK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd