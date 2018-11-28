#!/bin/bash/

for file in *.vcf*; do
    /home/bcftools-1.3/bcftools tabix -p vcf $file
done
