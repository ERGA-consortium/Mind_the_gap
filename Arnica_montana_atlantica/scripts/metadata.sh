#!/bin/bash

cat ./reads/trimmed/FORC-10_S59.fq | awk 'NR % 4 == 1' | cut -d ':' -f3,4 | sort | uniq -c > ./metadata/FORC-10.txt
cat ./reads/trimmed/FORC-13_S62.fq | awk 'NR % 4 == 1' | cut -d ':' -f3,4 | sort | uniq -c > ./metadata/FORC-13.txt
cat ./reads/trimmed/FORC-14_S63.fq | awk 'NR % 4 == 1' | cut -d ':' -f3,4 | sort | uniq -c > ./metadata/FORC-14.txt
cat ./reads/trimmed/PBOU-03_S43.fq | awk 'NR % 4 == 1' | cut -d ':' -f3,4 | sort | uniq -c > ./metadata/PBOU-03.txt
cat ./reads/trimmed/PBOU-04_S44.fq | awk 'NR % 4 == 1' | cut -d ':' -f3,4 | sort | uniq -c > ./metadata/PBOU-04.txt
cat ./reads/trimmed/PBOU-12_S51.fq | awk 'NR % 4 == 1' | cut -d ':' -f3,4 | sort | uniq -c > ./metadata/PBOU-12.txt
cat ./reads/trimmed/PFOR-01_S6.fq  | awk 'NR % 4 == 1' | cut -d ':' -f3,4 | sort | uniq -c > ./metadata/PFOR-01.txt
cat ./reads/trimmed/PFOR-12_S11.fq | awk 'NR % 4 == 1' | cut -d ':' -f3,4 | sort | uniq -c > ./metadata/PFOR-12.txt
cat ./reads/trimmed/PFOR-14_S12.fq | awk 'NR % 4 == 1' | cut -d ':' -f3,4 | sort | uniq -c > ./metadata/PFOR-14.txt
cat ./reads/trimmed/PFOR-16_S14.fq | awk 'NR % 4 == 1' | cut -d ':' -f3,4 | sort | uniq -c > ./metadata/PFOR-16.txt