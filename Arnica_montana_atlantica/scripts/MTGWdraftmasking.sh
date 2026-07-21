for asm in ./Input/*; do
	RepeatMasker -pa 16 -species "pentapetalae" -xsmall -gff -dir Output/ ${asm}
done
