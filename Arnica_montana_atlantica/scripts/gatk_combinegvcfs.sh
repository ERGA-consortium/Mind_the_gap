#!/bin/bash

#gatk CombineGVCFs -R ./assemblies/flye.soft.fa -V gvcf/list_flye.txt -O ./cohort/cohort.flye.g.vcf.gz
#gatk CombineGVCFs -R ./assemblies/flye.soft.fa -V gvcf/list_ncbi.txt -O ./cohort/cohort.ncbi.g.vcf.gz

gatk CombineGVCFs \
  -R ./assemblies/flye.soft.fa \
  --variant ./gvcf/FORC-10.flye.g.vcf.gz \
  --variant ./gvcf/FORC-13.flye.g.vcf.gz \
  --variant ./gvcf/FORC-14.flye.g.vcf.gz \
  --variant ./gvcf/PBOU-03.flye.g.vcf.gz \
  --variant ./gvcf/PBOU-04.flye.g.vcf.gz \
  --variant ./gvcf/PBOU-12.flye.g.vcf.gz \
  --variant ./gvcf/PFOR-01.flye.g.vcf.gz \
  --variant ./gvcf/PFOR-12.flye.g.vcf.gz \
  --variant ./gvcf/PFOR-14.flye.g.vcf.gz \
  --variant ./gvcf/PFOR-16.flye.g.vcf.gz \
  -O ./cohort/cohort.flye.g.vcf.gz

gatk CombineGVCFs \
  -R ./assemblies/ncbi.soft.fa \
  --variant ./gvcf/FORC-10.ncbi.g.vcf.gz \
  --variant ./gvcf/FORC-13.ncbi.g.vcf.gz \
  --variant ./gvcf/FORC-14.ncbi.g.vcf.gz \
  --variant ./gvcf/PBOU-03.ncbi.g.vcf.gz \
  --variant ./gvcf/PBOU-04.ncbi.g.vcf.gz \
  --variant ./gvcf/PBOU-12.ncbi.g.vcf.gz \
  --variant ./gvcf/PFOR-01.ncbi.g.vcf.gz \
  --variant ./gvcf/PFOR-12.ncbi.g.vcf.gz \
  --variant ./gvcf/PFOR-14.ncbi.g.vcf.gz \
  --variant ./gvcf/PFOR-16.ncbi.g.vcf.gz \
  -O ./cohort/cohort.ncbi.g.vcf.gz