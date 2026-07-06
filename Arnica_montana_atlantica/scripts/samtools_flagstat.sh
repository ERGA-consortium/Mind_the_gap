#!/bin/bash

samtools flagstat ./bam/FORC-10.flye.bam > ./qc/flagstat/FORC-10.flye.flagstat.txt -@ 16
samtools flagstat ./bam/FORC-13.flye.bam > ./qc/flagstat/FORC-13.flye.flagstat.txt -@ 16
samtools flagstat ./bam/FORC-14.flye.bam > ./qc/flagstat/FORC-14.flye.flagstat.txt -@ 16
samtools flagstat ./bam/PBOU-03.flye.bam > ./qc/flagstat/PBOU-03.flye.flagstat.txt -@ 16
samtools flagstat ./bam/PBOU-04.flye.bam > ./qc/flagstat/PBOU-04.flye.flagstat.txt -@ 16
samtools flagstat ./bam/PBOU-12.flye.bam > ./qc/flagstat/PBOU-12.flye.flagstat.txt -@ 16
samtools flagstat ./bam/PFOR-01.flye.bam > ./qc/flagstat/PFOR-01.flye.flagstat.txt -@ 16
samtools flagstat ./bam/PFOR-12.flye.bam > ./qc/flagstat/PFOR-12.flye.flagstat.txt -@ 16
samtools flagstat ./bam/PFOR-14.flye.bam > ./qc/flagstat/PFOR-14.flye.flagstat.txt -@ 16
samtools flagstat ./bam/PFOR-16.flye.bam > ./qc/flagstat/PFOR-16.flye.flagstat.txt -@ 16
samtools flagstat ./bam/FORC-10.ncbi.bam > ./qc/flagstat/FORC-10.ncbi.flagstat.txt -@ 16
samtools flagstat ./bam/FORC-13.ncbi.bam > ./qc/flagstat/FORC-13.ncbi.flagstat.txt -@ 16
samtools flagstat ./bam/FORC-14.ncbi.bam > ./qc/flagstat/FORC-14.ncbi.flagstat.txt -@ 16
samtools flagstat ./bam/PBOU-03.ncbi.bam > ./qc/flagstat/PBOU-03.ncbi.flagstat.txt -@ 16
samtools flagstat ./bam/PBOU-04.ncbi.bam > ./qc/flagstat/PBOU-04.ncbi.flagstat.txt -@ 16
samtools flagstat ./bam/PBOU-12.ncbi.bam > ./qc/flagstat/PBOU-12.ncbi.flagstat.txt -@ 16
samtools flagstat ./bam/PFOR-01.ncbi.bam > ./qc/flagstat/PFOR-01.ncbi.flagstat.txt -@ 16
samtools flagstat ./bam/PFOR-12.ncbi.bam > ./qc/flagstat/PFOR-12.ncbi.flagstat.txt -@ 16
samtools flagstat ./bam/PFOR-14.ncbi.bam > ./qc/flagstat/PFOR-14.ncbi.flagstat.txt -@ 16
samtools flagstat ./bam/PFOR-16.ncbi.bam > ./qc/flagstat/PFOR-16.ncbi.flagstat.txt -@ 16