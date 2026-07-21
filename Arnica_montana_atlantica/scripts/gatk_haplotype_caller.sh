#!/bin/bash

#parallel --dry-run gatk HaplotypeCaller -R ./assemblies/flye.soft.fa -I {} -ERC GVCF -O ./gvcf/{/.}.g.vcf.gz ::: ./bam/*.bam

parallel gatk HaplotypeCaller -R ./assemblies/flye.soft.fa -I {} -ERC GVCF -O ./gvcf/{/.}.g.vcf.gz ::: ./bam/*flye.bam
parallel gatk HaplotypeCaller -R ./assemblies/ncbi.soft.fa -I {} -ERC GVCF -O ./gvcf/{/.}.g.vcf.gz ::: ./bam/*ncbi.bam
