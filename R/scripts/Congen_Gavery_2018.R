library(dplyr)
library(reshape2)

#STEP 1. PREPARING A BED FILE#########################################################################################
##Read in the methylKit output file containing DMRs between sperm and RBCs in O.mykiss##
DMRoutput <- read.csv("data/SpvRBC_DMR100bp_75percdiff")

#look at the output file
head(DMRoutput)

#filter DMRs to return only those that are hypo-methylated (in sperm v. RBC)
DMRoutput_hypo <-filter(DMRoutput, meth.diff < 0)

#how many rows in our filtered output?
nrow(DMRoutput_hypo)

#reformat the output into a bed file (fields: chrom, chromStart,chromEnd,name*)
#*name field can contain any information that you want to keep with the region, we will retain the meth.diff column
DMRoutput_hypo.bed <- DMRoutput_hypo[,c(2,3,4,8)]


#look at the file
head(DMRoutput_hypo.bed)

##save the file as a bed
write.table(DMRoutput_hypo.bed,"analyses/DMRs_hypo.bed",col.names = F, sep = '\t', row.names = F,quote = F)


#STEP 2. USING GENOMIC ARITHMATIC TO ANNOTATE REGIONS OF INTEREST#####################################################

#define location of bedtools program on you computer
bedtools <- "/Applications/bioinfo/bedtools2/bin/bedtools"

#define variables for bedtools command
#this all seems confusing 
#will try something
#DMRs <- "analyses/DMRs_hypo.bed"
#sortedDMRs<- "analyses/DMRs_hypo.sorted.bed"
#genes_gff <- "/Users/mackenzie.gavery/Desktop/Congen_2018/Omy_mRNA_subset.gff"
#output <- "/Users/mackenzie.gavery/Desktop/Congen_2018/system_output.txt"

#sort the bed using bedtools
#system(paste(bedtools, "sort -i", DMRs, ">", sortedDMRs))

#sort the bed using bedtools
#bedtools is commonly run in bash - the below notation is crazy and confusing
system(paste(bedtools, "sort -i", "analyses/DMRs_hypo.bed", ">", "analyses/DMRs_hypo.sorted.bed"))


#run bedtools 'closest', use -D to report distance from genes
#system(paste(bedtools, "closest -a", sortedDMRs, "-b", genes_gff, "-D b >", output))

system(paste(bedtools, "closest -a", "analyses/DMRs_hypo.sorted.bed", "-b", "data/Omy_mRNA_subset.gff", "-D b >", "analyses/closetgene.txt"))



#read in the output file 
annotated <- read.table("analyses/closetgene.txt", sep = '\t')
head(annotated) ##suggest bettter name -like dmr-genes

#assign new column IDs
##at least V14 which is distance to gene



#STEP 3. JOINING TABLES AND FILTERING BASED ON DISTANCE AND QUALIY OF ANNOTATION
#join the gene number to the SwissProt GeneID
genes_annot <- read.table("data/Omy_BLAST_UniProt.tab", header=T, sep="\t", stringsAsFactors=F, fill=T, quote="", na.strings="", comment.char="")

#look at file (this is a BLAST output file for all O. my genes to the UniProt Database)
head(genes_annot)

#perform a left join to join the output of bedtools to the blast output
geneID_IPA <- left_join(annotated,genes_annot, by = c("V13" = "Sequence"))

#look at it
head(geneID_IPA)
nrow(geneID_IPA)

#filter the annotations to, 1) genes within 10kb of DMR, 2) and e-value of < 1e-10

#THERE is likely a more elegant way to to this in with dplyr

#filter by distance from gene
annotations_filterA<-filter(geneID_IPA, V14 >= -10000)
nrow(annotations_filterA)
annotations_filterB<-filter(annotations_filterA, V14 <= 10000)
nrow(annotations_filterB)
#filter by evalue
annotations_filterC<-filter(annotations_filterB, E.Value <= 1e-10)
nrow(annotations_filterC)

# extract the 'UNIPROT_ACCESSION' and remove any duplicates for use in enrichment analysis

#split column 'Hit.Name' by "|"
newColNames <- c("DB", "UNIPROT_ACCESSTION","UNIPROT_ID")
newCols <- colsplit(annotations_filterC$Hit.Name, "\\|", newColNames)
head(newCols)
annotations_filterC_UNIPROT <- cbind(annotations_filterC, newCols)

head(annotations_filterC_UNIPROT)

#save full anotation file
write.table(annotations_filterC_UNIPROT,"analyses/DMR_fullannotations.txt",sep = "\t",quote = F,row.names = F)

#save a file of UNIPROT_IDs for enrichment analysis
write.table(annotations_filterC_UNIPROT$UNIPROT_ID, "analyses/DMR_UNIPROT_ID.txt", sep = "\t", quote = F, row.names = F, col.names = F)
