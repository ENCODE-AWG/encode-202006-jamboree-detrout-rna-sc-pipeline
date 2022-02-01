#!/bin/bash

pushd ENCLB956ELF
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB039CRC
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB745WXH
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB342BHZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB567VTD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB571LOU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB304ADY
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB918XPI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB754SEX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB620HWQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB880ZLG
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB794POB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB947PWM
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB773HLI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB086AKH
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB578UHU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB522NPO
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB873RKB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB479CCX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB639CLJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB057CVT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB112QYE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB914VRR
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB064HGO
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB469VRL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB204EKU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB249QAX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB225LKT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB912OOA
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB640NHB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB363WWI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB134RGQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB129LFT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB621EIT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB033XLU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB845DSU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB883MSA
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB524WLL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB863LRS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB534VTN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB671FWJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB791LRQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB549HXS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB236NYK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB648HBN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB270IKS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB284CPU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB618UUX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB230PXB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB570ZQE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB944MJT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB965KXU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB574GTO
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB540ICC
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB191IJY
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB003RYS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB218OZS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB835OER
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB291LEG
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB779UHQ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB506MGR
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB481LCB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB081SUD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB514RLH
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB243SGE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB828XLK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB297DPA
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB242YJU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB998CDS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB538QVH
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB219EWD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB903KKG
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB340IWZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB561OFB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB933ASV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB367HZZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB032ZXT
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB747VGK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB716KZC
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB284ZJK
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB653CUU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB950YDB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB078HYI
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB958FDX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB217YGZ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB925PUE
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB541LEL
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB971YWN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB106VMV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB256HGX
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB259RAA
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB463YUO
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB093ZEB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB767RCV
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB263MUS
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB678IDN
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB144UXB
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB970EMO
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB245USU
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB208PDA
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB233DSJ
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd
pushd ENCLB033ZJD
sbatch --time 1-0 --mem 64GB --cpus-per-task 24 -- snakemake --use-singularity --snakefile ~/woldlab-rna-seq/workflow/process-encode-splitseq.snakefile --cluster "sbatch --time 1-0 --mem {resources.mem_mb} --cpus-per-task {threads}" --jobs 40 --cores 40
popd