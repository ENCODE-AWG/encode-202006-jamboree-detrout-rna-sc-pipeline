#!/bin/bash

~/cellranger-3.1.0/cellranger \
    count --id=ENCSR874BOF-10x-e10_5-count-cells10000  --sample ENCSR874BOF \
          --transcriptome ~/proj/genome/mm10-M21-male/mm10-M21-male-cellranger-3.1.0/ \
          --expect-cells 10000 \
          --fastqs .
