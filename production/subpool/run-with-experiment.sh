#!/bin/bash

pushd ENCSR019BZL_ENCBS077XIS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR019BZL_ENCBS331TRK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR047KXM_ENCBS471TDE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR047KXM_ENCBS884VMI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR137UJM_ENCBS837MZQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR137UJM_ENCBS880FWQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR253YLA_ENCBS180IZM
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR253YLA_ENCBS933EVB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR279GBC_ENCBS613QQM
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR279GBC_ENCBS743KNR
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR328JOY_ENCBS373TUO
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR328JOY_ENCBS965EFJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR355CTS_ENCBS510QAA
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR355CTS_ENCBS963ZVP
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR399TQO_ENCBS002BZK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR399TQO_ENCBS884WOI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR459ESG_ENCBS325GUZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR459ESG_ENCBS875BWJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR488XVC_ENCBS865MRB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR488XVC_ENCBS888VUS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR498SXJ_ENCBS085JPI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR498SXJ_ENCBS759QMD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR577OFZ_ENCBS581ENU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR577OFZ_ENCBS624IZL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR627PLH_ENCBS443FTE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR627PLH_ENCBS521SGC
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR653HPZ_ENCBS164HJY
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCSR653HPZ_ENCBS973VUK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd