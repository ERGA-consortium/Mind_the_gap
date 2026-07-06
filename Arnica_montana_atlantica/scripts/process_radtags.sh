#!/bin/bash

process_radtags -p ./reads/raw/ -o ./reads/trimmed/ -i fastq -y fastq --retain-header -t 36 -c -q -E phred33 --window-size 0.15 --score-limit 20 --disable_rad_check --threads 8