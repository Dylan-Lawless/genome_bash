########################################
####    Collate columns             ####
########################################
####    A long list of files for    ####
####    each phenotype measurement  ####
####    need to have the data from  ####
####    one column compilled into   ####
####    a master table for use in R ####
########################################


#!/bin/bash
#for f in ./*_bin_clin/pheno.txt; do 
for f in ./t*.txt; do 
    awk '{ print $2 }' $f '{sum+=$NF} END {print sum}' >> f3.txt
done

#     new=$(openssl rand -rand "$x" -hex 16)
#     echo ""$x", $new" >> output_file.csv
#     mv "${x//[ ()@$]/_:}" "../raw_data/"$file".dir/$new.vcf"
# done

