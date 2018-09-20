########################################################
####  Some prep work done to help interpret results ####
########################################################

# E.g. used in the first instance. After routine analysis
# the candidate list is still too great. I produce a summary
# that will be readble for collaborators. In this case the file:
# Inflammatory_disorder_cohort.master_all_variants.ImmuneGeneList.getFunctionalVariantsVep.all.cadd_ranked.gene_anno.summarise.simple.xlsx

# Export all gene names and give the count
# $ sort list.txt | uniq -c >> Inflammatory_disorder_cohort_hit_count.txt
# format to csv
# cross against my "master" list of immune genes

# getwd()
# setwd("./")

########################################################
####      Import data                               ####
########################################################

master <- read.csv("./master.csv", stringsAsFactors=FALSE)
Inflammatory_disorder_cohort <- read.csv("./Inflammatory_disorder_cohort_hit_count.csv", stringsAsFactors=FALSE)

########################################################
####  Merge the master immune gene list             ####
####  with the Inflammatory_disorder_cohort hits    ####
########################################################

combine <- merge(master, Inflammatory_disorder_cohort, by = "Gene", all = TRUE)

########################################################
####  Remove the genes that happen to overlap       ####
####  gene of interest and remove anything from     ####
####  the master list that is not in the cohort list####
########################################################

clean <- na.omit(combine)

########################################################
####  write out the table                           ####
########################################################

write.csv(clean, './genes_of_interest.csv', row.names = FALSE)

########################################################
####  The output can be sorted as of interest       ####
####  e.g. autosomal dominant autoinflammatory gene ####
########################################################
