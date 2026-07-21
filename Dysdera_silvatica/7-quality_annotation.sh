#!/bin/bash
#$ -cwd
#$ -V
#$ -N 'omark'
#$ -q h14.q
#$ -pe ompi511h14 1

source ~/.bash_profile
conda activate omark

OUTDIR=~/Mind_the_gaps/7-quality_annotation
INDIR=~/Mind_the_gaps/7-quality_annotation/chr_genome
OMARK_PATH=~/Mind_the_gaps/7-quality_annotation/OMArk-0.3.1/bin

omamer search --db $OUTDIR/LUCA.h5 --query $INDIR/tsebra_both_keep_genemark_longest.aa --out $INDIR/tsebra_both_keep_genemark_longest.omamer
$OMARK_PATH/omark -f $INDIR/tsebra_both_keep_genemark_longest.omamer -d $OUTDIR/LUCA.h5 -o $INDIR
