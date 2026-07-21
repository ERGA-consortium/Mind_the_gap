#! /bin/bash -x
#$ -cwd
#$ -V

source ~/.bash_profile
conda activate java_env 

date

MYBASE=~/Mind_the_gaps/3-quality_raw_reads/ 
MYDATA=~/Mind_the_gaps/3-quality_raw_reads/raw_reads/ 

MYRESULTS=$MYBASE/trimmomatic_results
mkdir -p $MYRESULTS/trim

sample=$1 

java -jar $TRIMMOMATIC/trimmomatic-0.39.jar PE \
	-threads 12 \
	$MYDATA/${sample}_1.fastq.gz \
	$MYDATA/${sample}_2.fastq.gz \
	$MYRESULTS/trim/${sample}_R1_paired.fq.gz \
	$MYRESULTS/trim/${sample}_R1_unpaired.fq.gz \
	$MYRESULTS/trim/${sample}_R2_paired.fq.gz \
	$MYRESULTS/trim/${sample}_R2_unpaired.fq.gz \
	ILLUMINACLIP:$TRIMMOMATIC/adapters/TruSeq2-PE.fa:2:30:10 \
	LEADING:3 \
	TRAILING:3 \
	SLIDINGWINDOW:4:15 \
	MINLEN:50 2> /$MYRESULTS/log/${sample}_trimmo_log.txt
