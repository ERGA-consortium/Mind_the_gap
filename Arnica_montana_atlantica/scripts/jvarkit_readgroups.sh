#!/bin/bash

java -jar jvarkit/dist/biostar78400.jar -x rg/FORC-10.xml bam_noRG/FORC-10.flye.bam -o bam/FORC-10.flye.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/FORC-13.xml bam_noRG/FORC-13.flye.bam -o bam/FORC-13.flye.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/FORC-14.xml bam_noRG/FORC-14.flye.bam -o bam/FORC-14.flye.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PBOU-03.xml bam_noRG/PBOU-03.flye.bam -o bam/PBOU-03.flye.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PBOU-04.xml bam_noRG/PBOU-04.flye.bam -o bam/PBOU-04.flye.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PBOU-12.xml bam_noRG/PBOU-12.flye.bam -o bam/PBOU-12.flye.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PFOR-01.xml bam_noRG/PFOR-01.flye.bam -o bam/PFOR-01.flye.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PFOR-12.xml bam_noRG/PFOR-12.flye.bam -o bam/PFOR-12.flye.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PFOR-14.xml bam_noRG/PFOR-14.flye.bam -o bam/PFOR-14.flye.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PFOR-16.xml bam_noRG/PFOR-16.flye.bam -o bam/PFOR-16.flye.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/FORC-10.xml bam_noRG/FORC-10.ncbi.bam -o bam/FORC-10.ncbi.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/FORC-13.xml bam_noRG/FORC-13.ncbi.bam -o bam/FORC-13.ncbi.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/FORC-14.xml bam_noRG/FORC-14.ncbi.bam -o bam/FORC-14.ncbi.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PBOU-03.xml bam_noRG/PBOU-03.ncbi.bam -o bam/PBOU-03.ncbi.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PBOU-04.xml bam_noRG/PBOU-04.ncbi.bam -o bam/PBOU-04.ncbi.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PBOU-12.xml bam_noRG/PBOU-12.ncbi.bam -o bam/PBOU-12.ncbi.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PFOR-01.xml bam_noRG/PFOR-01.ncbi.bam -o bam/PFOR-01.ncbi.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PFOR-12.xml bam_noRG/PFOR-12.ncbi.bam -o bam/PFOR-12.ncbi.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PFOR-14.xml bam_noRG/PFOR-14.ncbi.bam -o bam/PFOR-14.ncbi.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM
java -jar jvarkit/dist/biostar78400.jar -x rg/PFOR-16.xml bam_noRG/PFOR-16.ncbi.bam -o bam/PFOR-16.ncbi.bam -p '[a-zA-Z0-9\-]+:[0-9]+:([a-zA-Z0-9]+):([0-9]):[0-9]+:[0-9]+:[0-9]+.*.' --samoutputformat BAM