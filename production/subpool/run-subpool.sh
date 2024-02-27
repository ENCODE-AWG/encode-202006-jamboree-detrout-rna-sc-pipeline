#!/bin/bash

pushd ENCBS077XIS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS331TRK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS091LPB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS546HYE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS135NXY
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS811EFW
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS471TDE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS884VMI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS600VDJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS830ZRU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS543UZZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS837RGL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS194GJK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS266BTE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS254HFK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS815NZI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS204TIR
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS789TOM
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS368BFZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS819SOQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS097XFY
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS915VYE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS837MZQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS880FWQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS607HRU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS859MFY
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS337YRQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS858VQI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS332NCN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS825VRD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS221WCD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS684EYE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS112ZTO
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS865NYD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS444FZI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS545BQV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS554AFJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS772CYI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS303GRJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS752LYQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS180IZM
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS933EVB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS437MUU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS784PKN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS212ZGA
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS356FYU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS613QQM
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS743KNR
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS301MIH
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS715KFN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS279BGJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS546RHB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS136GTT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS527NEL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS326PIL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS588QYH
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS373TUO
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS965EFJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS510QAA
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS963ZVP
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS321JYG
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS711QUR
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS747PJX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS929ZLW
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS002BZK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS884WOI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS400OJZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS886UFP
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS066BIL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS246YKO
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS052PTJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS491RGY
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS127IKP
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS162VAJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS358CLR
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS550MIB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS196YFO
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS568ZQD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS325GUZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS875BWJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS385AIT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS772KDD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS300KQE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS454DBZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS865MRB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS888VUS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS255XIB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS819TFW
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS085JPI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS759QMD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS621RNE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS997ZIT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS236AOI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS279ODU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS257LBM
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS344PXR
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS414FUV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS448REP
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS434NYG
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS998IGC
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS219MZB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS832TSE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS581ENU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS624IZL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS223VJX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS619GLX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS492MEE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS984OYL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS399GAV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS713XTP
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS038OUJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS920SFB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS171VCQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS740HOX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS443FTE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS521SGC
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS013DIR
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS857GBI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS161CUQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS739CMN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS164HJY
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS973VUK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS007OHI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS498DPL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS606AOJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS709OTD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS252JYW
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS738KQK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS683KKF
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS826WGQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS814FFV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS988HXK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS229UTD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS315GYQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS149DQX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS611BUN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS364VBE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS459ROD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS510JLV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS522UXP
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS039LEW
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS323MYZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS614XKF
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS648JXV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS231UDN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS291QIZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS613XIS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS955GMS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS043EST
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS174PCZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS578PCE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS749DZM
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS018LKO
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS073VUQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS873TSZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS983SKY
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS336XYG
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS537RFX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS851DUN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS961MPB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS232ZXV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS757FVH
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS099STV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS598PEZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS373BVD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS894OAU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS807DYE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS818LDL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS024SIK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS850WBJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS317KAV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS462MCF
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS608STD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCBS829KDQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-conda --snakefile ~/woldlab-rna-seq/workflow/process-encode-split-subpool.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd