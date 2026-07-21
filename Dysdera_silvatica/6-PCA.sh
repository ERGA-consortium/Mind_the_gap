#!/bin/bash
#$ -cwd
#$ -V
#$ -N 'PCAangsd'
#$ -q h10.q
#$ -pe ompi64h10 8

## STEP 1 - ANGSD CALLING ##

mkdir Results
pth_home=~/Mind_the_gaps/6-popgenomics_stats/6.1-PCA_final_version

pth_i=$pth_home
pth_o=$pth_home/Results
pth_angsd=~/Programes/angsd
i_name=bam.filelist
o_name=$1_cohort_preliminary
ref=~/Mind_the_gaps/1-data/chromosome_assembly/Dsil_V2.3_genome.fasta
threads=8
min_depth=4 
max_depth=196 
bedfile=~/Mind_the_gaps/2.1-masking_bed_files/$1_repeat_coordinates_sorted_reverse_angsd.bed  # este tambien lo tienes que cambiar
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
    -minInd 8 \
    -SNP_pval 1e-6 \
    -doGeno 32 \
    -doPost 1

threads=8

pth_i=$pth_home/Results/all_genos_dir
pth_o=$pth_home

pth_ngstools=~/Programes/ngsTools
nind=10 

NSITES=`zcat Results/*mafs.gz | tail -n+2 | wc -l`

#Do the PCA
i_name=merged_chr.geno
o_name=merged_chr.tab

$pth_ngstools/ngsPopGen/ngsCovar -probfile $pth_i/$i_name \
    -outfile $pth_o/$o_name \
    -nind $nind \
    -nsites $NSITES \
    -call 0 \
    -verbose 0 \
    -block_size 20000 \
    -norm 0 \
    -minmaf 0.04 \


date


## STEP 2 - PCA TO EIGENVALUES ##


cov <- as.matrix(read.table("PCA.tab"))

pca <- eigen(cov)

write.table(pca$values, "eigenvalues.txt", row.names=FALSE, col.names=FALSE)
write.table(pca$vectors, "eigenvectors.txt", row.names=FALSE, col.names=FALSE)

# ---- PLOT ----
pc1 <- pca$vectors[,1]
pc2 <- pca$vectors[,2]

png("PCA_plot.png", width=800, height=600)

plot(pc1, pc2,
     xlab=paste0("PC1 (", round(100*pca$values[1]/sum(pca$values),1), "%)"),
     ylab=paste0("PC2 (", round(100*pca$values[2]/sum(pca$values),1), "%)"),
     main="PCA from ANGSD",
     pch=19, col="steelblue")

dev.off()
