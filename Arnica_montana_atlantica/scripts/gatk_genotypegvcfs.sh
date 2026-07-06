#!/bin/bash

gatk GenotypeGVCFs -R assemblies/flye.soft.fa -V cohort/cohort.flye.g.vcf.gz -O ./cohort/cohort.flye.raw.vcf.gz
gatk GenotypeGVCFs -R assemblies/ncbi.soft.fa -V cohort/cohort.ncbi.g.vcf.gz -O ./cohort/cohort.ncbi.raw.vcf.gz
