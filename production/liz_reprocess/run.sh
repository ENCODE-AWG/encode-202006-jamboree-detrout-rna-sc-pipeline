#!/bin/bash

pushd ENCLB527JDU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB273ZWE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB129LMS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB952MZJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB514RKT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB294FBZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd