#!/bin/bash

gatk VariantFiltration \
  -R assemblies/flye.soft.fa \
  -V cohort/cohort.flye.raw.vcf.gz \
  --filter-expression "QD < 2.0 || FS > 60.0 || MQ < 40.0" \
  --filter-name "basic_snp_filter" \
  -O cohort/cohort.flye.flt.vcf.gz

gatk VariantFiltration \
  -R assemblies/ncbi.soft.fa \
  -V cohort/cohort.ncbi.raw.vcf.gz \
  --filter-expression "QD < 2.0 || FS > 60.0 || MQ < 40.0" \
  --filter-name "basic_snp_filter" \
  -O cohort/cohort.ncbi.flt.vcf.gz