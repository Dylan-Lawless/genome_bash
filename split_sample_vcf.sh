#!/bin/bash/

# Call each sample ID in a vcf and split each sample into a seperate vcf.
# run with $ bash ./split_sample_vcf.sh 
# not with $ sh ...
# because string substitution syntax would not be supported with Ubuntu for example.
# Credit to BioStars, Jorge Amigo for this.

for file in *.vcf*; do
    for sample in `/home/bcftools-1.3/bcftools query -l $file`; do
    /home/bcftools-1.3/bcftools view -c1 -Oz -s $sample -o ${file/.vcf*/.$sample.vcf.gz} $file
   done
done
