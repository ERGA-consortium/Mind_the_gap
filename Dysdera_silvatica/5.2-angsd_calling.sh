#$ -cwd
#$ -V
#$ -N 'angsd'
#$ -q h10.q
#$ -pe ompi64h10 8

## STEP 1 - ANGSD CALLING ##


pth_home=~/Mind_the_gaps/5.1-heterozygosity

pth_i=$pth_home
pth_o=$pth_home/Results
pth_angsd=~/Programes/angsd
i_name=bam.filelist
o_name=$1_cohort_preliminary
ref=~/Mind_the_gaps/1-data/chromosome_assembly/Dsil_V2.3_genome.fasta 
threads=8
min_depth=4 
max_depth=196 
bedfile=~/Mind_the_gaps/2.1-masking_bed_files/$1_repeat_coordinates_sorted_reverse_angsd.bed # este tambien lo tienes que cambiar
pth_anc=~/Mind_the_gaps/1-data/chromosome_assembly/Dsil_V2.3_genome.fasta

$pth_angsd/angsd \
    -GL 2 \
    -out $pth_o/$o_name \
    -nThreads $threads \
    -doSaf 1 \
    -anc $pth_anc \
    -ref $ref \
    -rf $bedfile \
    -C 50 \
    -baq 1 \
    -minMapQ 20 \
    -minQ 20 \
    -uniqueOnly 1 \
    -remove_bads 1 \
    -only_proper_pairs 1 \
    -doMajorMinor 4 \
    -doMaf 1 \
    -setMinDepth $min_depth \
    -setMaxDepth $max_depth \
    -doCounts 1 \
    -bam $pth_i/$i_name \
    -skipTriallelic 1 \
    -doGeno 2 \
    -doPost 1

## STEP 2 - CALCULATING HETEROZYGOSITY ##

#!/usr/bin/env python3
import sys
import gzip
import re
geno_file = sys.argv[1]
bam_ids = []
with open("../bam.filelist") as f:
    for line in f:
        m = re.search(r'(PEsg_\d+_\d+)', line)
        if m:
            bam_ids.append(m.group(1))
het = [0]*10
total = [0]*10
with gzip.open(geno_file, "rt") as f:
    for line in f:
        cols = line.strip().split()
        for i in range(10):
            val = cols[i+2]
            if val == '1':
                het[i] += 1
            if val in ('0','1','2'):
                total[i] += 1
for i in range(10):
    ho = het[i]/total[i] if total[i] > 0 else 0
    print(f"{bam_ids[i]} {ho:.5f}")
