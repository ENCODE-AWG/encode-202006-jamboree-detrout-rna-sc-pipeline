#!/usr/bin/python3
from argparse import ArgumentParser
import sys
from woldrnaseq.models import load_gtf_cache
from Bio import SeqIO
from Bio.Alphabet import generic_dna
from Bio.Seq import Seq
import pandas
from xopen import xopen

def main(cmdline=None):
    parser = make_parser()
    args = parser.parse_args(cmdline)

    gtf = load_gtf_cache(args.gtf)
    generate_transcript_fasta(args.fasta, gtf, args.output)


def generate_transcript_fasta(fasta, gtf, output=None):
    try:
        if output is None:
            output = sys.stdout
        else:
            output = open(output, 'wt')

        count = 0
        with xopen(fasta, 'rt') as fasta_stream:
            contigs = SeqIO.parse(fasta_stream, 'fasta')
            for record in contigs:
                seq = Seq("", generic_dna)
                seq_name = None
                try:
                    for transcript in filter_records(gtf, record.id):
                        for gene_id, start, stop, strand in transcript:
                            seq_name = gene_id
                            if start >= 0 and start <= len(record) and stop <= len(record):
                                seq += record[start:stop]
                            else:
                                print(f'{gene_id} {start} {stop} too long for {record.id} {len(record)}')
                        if len(seq) == 0:
                            print('Seq is empty', record.id, len(record), 's', gene_id,  start, stop, strand, seq, len(seq), file=sys.stderr)
                        else:
                            if strand == 1:
                                transcript = seq.seq.upper()
                            else:
                                transcript = seq.seq.reverse_complement().upper()
                            count += 1
                            output.write(f'>{seq_name}\n{transcript}\n')
                            seq = Seq("", generic_dna)
                except AttributeError as e:
                    print('exception', record.id, len(record), 's', gene_id, start, stop, strand, seq, len(seq), file=sys.stderr)
                    print(e)
                    break
    finally:
        if output is not None:
            output.close()
    print(f'wrote {count} records', file=sys.stderr)


def filter_records(gtf, contig):
    regions = gtf[(gtf.chromosome == contig)]

    sequence = []
    seq_id = None
    for i, record in regions.iterrows():
        seq_id = record.transcript_id
        if pandas.isnull(seq_id):
            seq_id = record.gene_id
        if pandas.isnull(seq_id):
            print(i, record)
            raise RuntimeError("Couldn't determine sequence name")
        if record['type'] == 'tRNA':
            yield [(seq_id, record.start-1, record.stop, record.strand)]
        elif record['type'] == 'transcript':
            if len(sequence) > 0:
                yield sequence
                sequence = []
        elif record['type'] == 'exon':
            sequence.append((seq_id, record.start-1, record.stop, record.strand))

    yield sequence

    
def make_parser():
    parser = ArgumentParser()
    parser.add_argument('-g', '--gtf', help='specify gtf cache')
    parser.add_argument('-f', '--fasta', help='genome fasta')
    parser.add_argument('-o', '--output', help='destination file')
    return parser
if __name__ == '__main__':
    main()
