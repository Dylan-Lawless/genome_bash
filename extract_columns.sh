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
# awk 'FNR==1{f++}{a[f,FNR]=$3}END{for(x=1;x<=FNR;x++){for(y=1;y<ARGC;y++)printf("%s ",a[y,x]);print ""}}' ./../*/pheno.txt

# Tab delim
awk 'FNR==1{f++}{a[f,FNR]=$3}END{for(x=1;x<=FNR;x++){for(y=1;y<ARGC;y++)printf("%s      ",a[y,x]);print ""}}' ./../*/pheno.txt > master.txt

# The spacer method can be changed; tab, space, comma, etc.
# Another way to convert later is with the following command.
# [The tab character (after ``s/'' in the following command) must be removed and printed to the command line using ``ctrl+v'' then ``tab''.]

# \medskip \texttt{\$ sed 's/ /,/g' input.tsv > output.csv}
