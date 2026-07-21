#!/bin/bash
#$ -cwd
#$ -V
#$ -N 'angsd'
#$ -q h10.q
#$ -pe ompi64h10 8

## STEP 1 - CALLING ##

date
mkdir Results
pth_home=~/Mind_the_gaps/5-variant_calling_final_version

pth_i=$pth_home
pth_o=$pth_home/Results
pth_angsd=~/Programes/angsd
i_name=bam.filelist
o_name=$1_cohort_preliminary
ref=~/Mind_the_gaps/1-data/chromosome_assembly/Dsil_V2.3_genome.fasta 
threads=8
min_depth=4 
max_depth=196 
bedfile=~/Mind_the_gaps/2.1-masking_bed_files/$1_repeat_coordinates_sorted_reverse_angsd.bed #
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
    -minInd 8 

## STEP 2 - CONCAT SAF ##

threads=8

$pth_angsd/misc/realSFS cat -b files_merge.txt -P $threads -outnames merged_saft_chr

## STEP 3 - GLOBAL STATISTICS ##

pth_home=~/Mind_the_gaps/5-variant_calling_final_version

# Calculate the SFS
pth_i=$pth_home
pth_o=$pth_home
pth_angsd=~/Programes/angsd
i_name_prefix=$1
o_name_prefix=$1
threads=8
winsize=50000


$pth_angsd/misc/realSFS \
    $pth_i/$i_name_prefix.saf.idx \
    -P $threads \
    > $pth_o/$o_name_prefix.sfs

# Calculate thetas
pth_i=$pth_home
pth_o=$pth_home
i_name_prefix=$1
o_name_prefix=$1
threads=8

$pth_angsd/misc/realSFS \
   saf2theta \
    $pth_i/$i_name_prefix.saf.idx \
    -outname $pth_o/$o_name_prefix.theta_all \
    -sfs $pth_o/$o_name_prefix.sfs

# Calculate global statistics. Needed also to perform the sliding windows analysis
pth_i=$pth_home
pth_o=$pth_home

i_name_prefix=$1
o_name_prefix=$1
threads=8

# Calculate thetas and statistics per window
$pth_angsd/misc/thetaStat do_stat \
    $pth_o/$i_name_prefix.theta_all.thetas.idx \
    -win $winsize \
    -step $winsize \
    -outnames $pth_o/$o_name_prefix.win.gz \
    -type 2

# Obtain file with coordinates
awk -F "[()]" '{print $6}' $pth_o/$o_name_prefix.win.gz.pestPG | sed -e 's/,/-/g' -  > $pth_o/$o_name_prefix.win.gz.pestPG_coord
sed -i 1d $pth_o/$o_name_prefix.win.gz.pestPG_coord

FILE_CO=$pth_o/$o_name_prefix.win.gz.pestPG_coord

## STEP 4 - CALCULATING NUCLEOTIDE DIVERSITY ##

#!/bin/bash

input_file=$1
output_file="pi_windowed.tsv"

awk 'BEGIN {
    OFS="\t";
    print "CHROM", "BIN_START", "BIN_END", "PI"
}
!/^#/ {
    chrom = $2
    center = $3
    start = center - 25000
    end = center + 25000
    tp = $5
    nsites = $14
    pi = tp / nsites 
    printf "%s\t%d\t%d\t%.4f\n", chrom, start, end, pi
}' "$input_file" > "$output_file"
