#!/usr/bin/python3

from pysam import AlignmentFile
from pathlib import Path


def main(cmdline=None):
    analysis_dir = Path('ENCSR874BOF_e10_5_limb')
    #bam_filename = analysis_dir / 'diane_star_solo/Aligned.sortedByCoord.out.bam'
    bam_filename = analysis_dir / 'diane_star_solo/Aligned.toTranscriptome.out.bam'
    #bam_filename = analysis_dir / 'ENCSR874BOF-10x-e10_5-count-cells10000/outs/possorted_genome_bam.bam'
    out_bam_filename = analysis_dir / 'possorted-common-barcodes.bam'
    a = AlignmentFile(bam_filename, 'rb')

    barcode_filename = analysis_dir / 'common_barcodes.txt'
    barcodes = read_barcodes_as_10x(barcode_filename)

    display_reads(a)

def display_reads(a):
    for i, read in enumerate(a):
        print(read)

        if i > 100:
            break

    
def filter_reads(a, barcodes, out_bam_filename):
    outstream = AlignmentFile(out_bam_filename, 'wb')

    count = 1
    for read in a:
        if (count % 100000) == 0:
            print(f'Processed {count} reads')
        if read.has_tag('CB') and read.get_tag('CB') in barcodes:
            outstream.write(read)
            count += 1

    print(f'Processed {count-1} reads')
    outstream.close()

def read_barcodes_as_10x(barcode_filename):
    barcodes = set()
    with open(barcode_filename, 'rt') as instream:
        for line in instream:
            barcodes.add(line.rstrip() + '-1')

    return barcodes

if __name__ == '__main__':
    main()
    
