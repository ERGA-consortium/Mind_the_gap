#!/bin/bash

bwa mem -M -t 16 ./assemblies/flye.soft.fa ./reads/trimmed/FORC-10_S59.fq | samtools sort -@8 -o ./bam/FORC-10.flye.bam
bwa mem -M -t 16 ./assemblies/flye.soft.fa ./reads/trimmed/FORC-13_S62.fq | samtools sort -@8 -o ./bam/FORC-13.flye.bam
bwa mem -M -t 16 ./assemblies/flye.soft.fa ./reads/trimmed/FORC-14_S63.fq | samtools sort -@8 -o ./bam/FORC-14.flye.bam
bwa mem -M -t 16 ./assemblies/flye.soft.fa ./reads/trimmed/PBOU-03_S43.fq | samtools sort -@8 -o ./bam/PBOU-03.flye.bam
bwa mem -M -t 16 ./assemblies/flye.soft.fa ./reads/trimmed/PBOU-04_S44.fq | samtools sort -@8 -o ./bam/PBOU-04.flye.bam
bwa mem -M -t 16 ./assemblies/flye.soft.fa ./reads/trimmed/PBOU-12_S51.fq | samtools sort -@8 -o ./bam/PBOU-12.flye.bam
bwa mem -M -t 16 ./assemblies/flye.soft.fa ./reads/trimmed/PFOR-01_S6.fq | samtools sort -@8 -o ./bam/PFOR-01.flye.bam
bwa mem -M -t 16 ./assemblies/flye.soft.fa ./reads/trimmed/PFOR-12_S11.fq | samtools sort -@8 -o ./bam/PFOR-12.flye.bam
bwa mem -M -t 16 ./assemblies/flye.soft.fa ./reads/trimmed/PFOR-14_S12.fq | samtools sort -@8 -o ./bam/PFOR-14.flye.bam
bwa mem -M -t 16 ./assemblies/flye.soft.fa ./reads/trimmed/PFOR-16_S14.fq | samtools sort -@8 -o ./bam/PFOR-16.flye.bam

bwa mem -M -t 16 ./assemblies/ncbi.soft.fa ./reads/trimmed/FORC-10_S59.fq | samtools sort -@8 -o ./bam/FORC-10.ncbi.bam
bwa mem -M -t 16 ./assemblies/ncbi.soft.fa ./reads/trimmed/FORC-13_S62.fq | samtools sort -@8 -o ./bam/FORC-13.ncbi.bam
bwa mem -M -t 16 ./assemblies/ncbi.soft.fa ./reads/trimmed/FORC-14_S63.fq | samtools sort -@8 -o ./bam/FORC-14.ncbi.bam
bwa mem -M -t 16 ./assemblies/ncbi.soft.fa ./reads/trimmed/PBOU-03_S43.fq | samtools sort -@8 -o ./bam/PBOU-03.ncbi.bam
bwa mem -M -t 16 ./assemblies/ncbi.soft.fa ./reads/trimmed/PBOU-04_S44.fq | samtools sort -@8 -o ./bam/PBOU-04.ncbi.bam
bwa mem -M -t 16 ./assemblies/ncbi.soft.fa ./reads/trimmed/PBOU-12_S51.fq | samtools sort -@8 -o ./bam/PBOU-12.ncbi.bam
bwa mem -M -t 16 ./assemblies/ncbi.soft.fa ./reads/trimmed/PFOR-01_S6.fq | samtools sort -@8 -o ./bam/PFOR-01.ncbi.bam
bwa mem -M -t 16 ./assemblies/ncbi.soft.fa ./reads/trimmed/PFOR-12_S11.fq | samtools sort -@8 -o ./bam/PFOR-12.ncbi.bam
bwa mem -M -t 16 ./assemblies/ncbi.soft.fa ./reads/trimmed/PFOR-14_S12.fq | samtools sort -@8 -o ./bam/PFOR-14.ncbi.bam
bwa mem -M -t 16 ./assemblies/ncbi.soft.fa ./reads/trimmed/PFOR-16_S14.fq | samtools sort -@8 -o ./bam/PFOR-16.ncbi.bam