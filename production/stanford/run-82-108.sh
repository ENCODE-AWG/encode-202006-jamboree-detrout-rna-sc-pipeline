#!/bin/bash

pushd ENCLB418IDT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB123ZDT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB676AMA
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB089YWN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB455UTN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB701RZY
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB061STU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB954OKJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB067EKD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB196FUF
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB296LDF
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB960RBM
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB039THH
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB225KMP
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB812SMT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB179BOW
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB104XFX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB568RWC
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB338RBX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB139QES
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB835IXS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB442AMV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB025XJD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB850RYI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB012QYK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB342YHF
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB002DZK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-10x.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd