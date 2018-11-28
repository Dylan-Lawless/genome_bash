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


# This method found stack overflow might also cuts the columns of interst to output:
awk -F, '{OFS=",";print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$20,$21,$22,$23,$24,$25,$30,$33}' infile.csv > outfile.csv
# or even this
cut -d "," -f1-10,20-25,30-33 infile.csv > outfile.csv

