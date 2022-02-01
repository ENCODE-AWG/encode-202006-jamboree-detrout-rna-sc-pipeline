import netrc
import os
from pathlib import Path
import pprint
import requests

CONFIG_YAML = Path("config.yaml")
import yaml
with open(CONFIG_YAML, "rt") as instream:
    config = yaml.load(instream)

for key in ['genome_dir', 'allow_list', 'star_command', 'outdir']:
    config[key] = Path(config[key]).expanduser()

authdb = netrc.netrc()
username, _, password = authdb.hosts['www.encodeproject.org']
auth = (username, password)

def generate_targets():
    for accession in config['read1']:
        yield "{}_R1.fastq.gz".format(accession)
    for accession in config['read2']:
        yield "{}_R2.fastq.gz".format(accession)


rule ALL:
    input:
        generate_targets()


rule get_fastq:
    output:
        "{accession}_R{read}.fastq.gz"
    params:
        username = username,
        password = password,
    threads: 1
    run:
        shell("curl -L -o {wildcards.accession}_R{wildcards.read}.fastq.gz https://{params.username}:{params.password}@www.encodeproject.org/files/{wildcards.accession}/@@download/{wildcards.accession}.fastq.gz")
#        for accession in config[wildcards.read1]:
#            url = f"https://{username}:{password}@www.encodeproject.org/files/{accession}/@@download/{accession}.fastq.gz"
#            shell("curl -L -o {accession}_R1.fastq.gz {url}")
#        for accession in config[wildcards.read2]:
#            url = f"https://{username}:{password}@www.encodeproject.org/files/{accession}/@@download/{accession}.fastq.gz"
#            shell("curl -L -o {accession}_R2.fastq.gz {url}")

