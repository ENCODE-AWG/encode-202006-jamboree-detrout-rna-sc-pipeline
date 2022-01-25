from pprint import pprint, pformat
from subprocess import run
import os
import sys

configfile: "config.yaml"
print(config)
print(config['genome_dir'])


rule ALL:
    input:
        "output.txt"
    run:
        #print("--globals--")
        #for k, v in globals().items():
        #    print(k, pformat(v))
        #print("--globals--")
        print(sys.argv)



rule genome_dir:
    output:
        temp(directory("genome")),
    run:
        os.mkdir("genome"),
        sys.argv.extend(['--singularity-args', '"-B /woldlab/loxcyc/home/diane/proj/genome:/woldlab/loxcyc/home/diane/proj/encode-202006-jamboree-detrout-rna-sc-pipeline/adrenal/ENCSR724KET_16f_nuc/fullsolo_multi_eoi_container/genome"'])

rule test:
    threads: 1
    input:
        star_index = "genome"
    output:
        "output.txt"
    singularity:
        "https://woldlab.caltech.edu/~diane/containers/star-dev_EoI_2.7.9a-2021-09-10.sif"
    params:
        genome_dir = config['genome_dir'],
    shell:
        """pwd
        echo homedir
        ls -l /woldlab/loxcyc/home/diane/

        echo projectdir
        ls -l /woldlab/loxcyc/home/diane/proj/encode-202006-jamboree-detrout-rna-sc-pipeline/

        echo project genome
        #ls -l /woldlab/loxcyc/home/diane/proj/encode-202006-jamboree-detrout-rna-sc-pipeline/genome/
        ls -l genome
        ls -l {params.genome_dir}

        echo tilde
        ls -l ~
        touch output.txt
        """
