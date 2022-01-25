import netrc
import os
from pathlib import Path
import pprint
import requests

CONFIG_YAML = Path("config.yaml")
import yaml
with open(CONFIG_YAML, "rt") as instream:
    config = yaml.load(instream)

authdb = netrc.netrc()
username, _, password = authdb.hosts['www.encodeproject.org']
auth = (username, password)


def generate_targets():
    for lane, accession in enumerate(config['read1']):
        yield "{}_S1_L00{}_R1_001.fastq.gz".format(config['sample_name'], lane+1)
    for lane, accession in enumerate(config['read2']):
        yield "{}_S1_L00{}_R2_001.fastq.gz".format(config['sample_name'], lane+1)
    for lane, accession in enumerate(config['read3']):
        yield "{}_S1_L00{}_R3_001.fastq.gz".format(config['sample_name'], lane+1)


rule ALL:
    input:
        generate_targets()


rule get_fastq:
    output:
        "{sample_name}_S1_L00{lane}_R{read}_001.fastq.gz"
    params:
        username = username,
        password = password,
    threads: 1
    run:
        accession = config['read{}'.format(wildcards.read)][int(wildcards.lane)-1]
        url = f"https://{username}:{password}@www.encodeproject.org/files/{accession}/@@download/{accession}.fastq.gz"
        shell("curl -L -o {sample_name}_S1_L00{lane}_R{read}_001.fastq.gz {url}".format(
            sample_name=config['sample_name'],
            lane=wildcards.lane,
            read=wildcards.read,
            url=url
        ))

