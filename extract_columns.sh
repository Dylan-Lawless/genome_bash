########################################
####    Extract columns             ####
########################################
####    A long list of files for    ####
####    each phenotype measurement  ####
####    need to have the data from  ####
####    one column compilled into   ####
####    a master table for use in R ####
########################################

# This takes column 3 from every file and appends to the output file
# Space delim
awk 'FNR==1{f++}{a[f,FNR]=$3}END{for(x=1;x<=FNR;x++){for(y=1;y<ARGC;y++)printf("%s ",a[y,x]);print ""}}' ./*_bin_clin/pheno.txt

# Tab delim
# awk 'FNR==1{f++}{a[f,FNR]=$3}END{for(x=1;x<=FNR;x++){for(y=1;y<ARGC;y++)printf("%s      ",a[y,x]);print ""}}' ./*/pheno.txt > master.txt
