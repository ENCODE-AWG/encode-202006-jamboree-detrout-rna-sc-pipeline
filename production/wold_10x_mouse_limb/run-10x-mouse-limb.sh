#!/bin/bash

pushd ENCLB635BYD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB497BTJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB935EGG
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB229VWB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB428UEV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB261TVA
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB414YSS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB583JZE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB938HOJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB042NUM
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB836HUJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB268GZV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd