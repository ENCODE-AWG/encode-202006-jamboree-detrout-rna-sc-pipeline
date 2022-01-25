rule test_star:
    output:
        "version.txt"
    conda:
        "envs/star.yaml"
    shell:
        "STAR --version > {output}"
