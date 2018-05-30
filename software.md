# Useful Software and Platforms

Table 1. Software and resources useful in functional genomic data analyses
 
### Raw Data Quality Control    
FastQC (Andrews and Others 2010) - Quality metrics for high-throughput sequencing runs
 
### Sequence Trimming     
Trimmomatic (Bolger, Lohse, and Usadel 2014) - Adapter and quality trimming    
TrimGalore! - wrapper for  Cutadapt (Martin 2011) - Adapter and quality trimming, extra functionality for bisulfite sequencing.     
 
### Transcriptome Sequence Assembly and Characterization    
Trinity (Grabherr et al. 2011) - De novo assembly with downstream analysis capability    
Trinotate  (Haas et al. 2013) - Annotation suite designed for automatic functional annotation of transcriptomes    
Dammit! (Scott 2017) - A simple de novo transcriptome annotator    
Transrate (Smith-Unna et al. 2016) - de-novo transcriptome assembly quality analysis    
  
### Sequence Read Mapping     
Bowtie(2) (Langmead et al. 2009) - Alignment tool for high-throughput sequencing    
BWA (H. Li and Durbin 2009) - Alignment tool for high-throughput sequencing    
STAR (Dobin et al. 2013) - Alignment tool for high-throughput sequencing to a reference genome    
TopHat(2) (Kim et al. 2013) - Splice junction mapper for RNA-Seq reads (uses Bowtie)    
BSMAP (Xi and Li 2009) - Bisulfite sequencing specific alignment    
Bismark (Krueger and Andrews 2011) - Bisulfite sequencing specific alignment (uses Bowtie)    
Samtools (H. Li et al. 2009) -SAM/BAM manipulations: conversion, sorting, indexing etc.    
 
### Differential Gene Expression and Differential Methylation Analysis         
RSEM (B. Li and Dewey 2011) - Alignment based transcript abundance estimation    
Kallisto - (Bray et al. 2016) Alignment-free transcript abundance estimation    
EdgeR (M. D. Robinson, McCarthy, and Smyth 2010) R package for differential expression analysis    
DeSeq  (Anders and Huber 2012) R package for differential expression analysis    
Methylkit (Akalin et al. 2012) - R package for analysis of DNA methylation profiles     
MethylExtract (Barturen et al. 2013) - Generates methylation maps and detects sequence variation    
MACAU (Lea, Tung, and Zhou 2015) - Differential methylation analysis for bisulfite sequencing data    
 
### Platforms for Genomic Analyses and Visualization     
Galaxy (Afgan et al. 2016; Goecks et al. 2013) - Web-based platform for accessible, reproducible, and transparent analysis and visualization    
Integrated Genome Viewer (IGV) (J. T. Robinson et al. 2011; Thorvaldsdóttir, Robinson, and Mesirov 2013) - Visualization tool for interactive exploration of large, integrated genomic datasets    
CoGe (Lyons and Freeling 2008; Lyons et al. 2008) - Online system for making the retrieval and comparison of genomic information and sequence data    
Cyverse (Merchant et al. 2016) - Cyberinfrastructure for enabling data to discovery for the life sciences    
Bedtools (Quinlan and Hall 2010) - Suite of utilities for comparing genomic features    
Samtools (H. Li et al. 2009) - Suite of programs for interacting with high-throughput sequencing data    
Cytoscape (Shannon et al. 2003)  - Software platform for visualizing complex networks    
Revigo (Supek et al. 2011) - Web service that visually summarizes Gene Ontology terms    
SQLShare - (Howe et al. 2011) - Database-as-a-service platform designed to facilitate data sharing and collaborative analysis




---

**References**

Afgan, Enis, Dannon Baker, Marius van den Beek, Daniel Blankenberg, Dave Bouvier, Martin Čech, John Chilton, et al. 2016. “The Galaxy Platform for Accessible, Reproducible and Collaborative Biomedical Analyses: 2016 Update.” Nucleic Acids Research 44 (W1): W3–10.

Akalin, Altuna, Matthias Kormaksson, Sheng Li, Francine E. Garrett-Bakelman, Maria E. Figueroa, Ari Melnick, and Christopher E. Mason. 2012. “methylKit: A Comprehensive R Package for the Analysis of Genome-Wide DNA Methylation Profiles.” Genome Biology 13 (10): R87.

Anders, Simon, and Wolfgang Huber. 2012. “Differential Expression of RNA-Seq Data at the Gene Level - the DESeq Package.” http://bioconductor.org/packages/release/bioc/vignettes/DESeq/inst/doc/DESeq.pdf.

Andrews, Simon, and Others. 2010. “FastQC: A Quality Control Tool for High Throughput Sequence Data.”

Barturen, Guillermo, Antonio Rueda, José L. Oliver, and Michael Hackenberg. 2013. “MethylExtract: High-Quality Methylation Maps and SNV Calling from Whole Genome Bisulfite Sequencing Data.” F1000Research 2 (October): 217.

Bolger, Anthony M., Marc Lohse, and Bjoern Usadel. 2014. “Trimmomatic: A Flexible Trimmer for Illumina Sequence Data.” Bioinformatics  30 (15): 2114–20.

Bray, Nicolas L., Harold Pimentel, Páll Melsted, and Lior Pachter. 2016. “Near-Optimal Probabilistic RNA-Seq Quantification.” Nature Biotechnology 34 (5): 525–27.

Dobin, Alexander, Carrie A. Davis, Felix Schlesinger, Jorg Drenkow, Chris Zaleski, Sonali Jha, Philippe Batut, Mark Chaisson, and Thomas R. Gingeras. 2013. “STAR: Ultrafast Universal RNA-Seq Aligner.” Bioinformatics  29 (1). Oxford University Press: 15–21.

Goecks, Jeremy, Carl Eberhard, Tomithy Too, Galaxy Team, Anton Nekrutenko, and James Taylor. 2013. “Web-Based Visual Analysis for High-Throughput Genomics.” BMC Genomics 14 (June): 397.

Grabherr, Manfred G., Brian J. Haas, Moran Yassour, Joshua Z. Levin, Dawn A. Thompson, Ido Amit, Xian Adiconis, et al. 2011. “Full-Length Transcriptome Assembly from RNA-Seq Data without a Reference Genome.” Nature Biotechnology 29 (7): 644–52.

Haas, Brian J., Alexie Papanicolaou, Moran Yassour, Manfred Grabherr, Philip D. Blood, Joshua Bowden, Matthew Brian Couger, et al. 2013. “De Novo Transcript Sequence Reconstruction from RNA-Seq Using the Trinity Platform for Reference Generation and Analysis.” Nature Protocols 8 (8): 1494–1512.

Howe, Bill, Garret Cole, Emad Souroush, Paraschos Koutris, Alicia Key, Nodira Khoussainova, and Leilani Battle. 2011. “Database-as-a-Service for Long-Tail Science.” In Scientific and Statistical Database Management, 480–89. Springer, Berlin, Heidelberg.

Kim, Daehwan, Geo Pertea, Cole Trapnell, Harold Pimentel, Ryan Kelley, and Steven L. Salzberg. 2013. “TopHat2: Accurate Alignment of Transcriptomes in the Presence of Insertions, Deletions and Gene Fusions.” Genome Biology 14 (4): R36.

Krueger, Felix, and Simon R. Andrews. 2011. “Bismark: A Flexible Aligner and Methylation Caller for Bisulfite-Seq Applications.” Bioinformatics  27 (11): 1571–72.

Langmead, Ben, Cole Trapnell, Mihai Pop, and Steven L. Salzberg. 2009. “Ultrafast and Memory-Efficient Alignment of Short DNA Sequences to the Human Genome.” Genome Biology 10 (3): R25.

Lea, Amanda J., Jenny Tung, and Xiang Zhou. 2015. “A Flexible, Efficient Binomial Mixed Model for Identifying Differential DNA Methylation in Bisulfite Sequencing Data.” PLoS Genetics 11 (11): e1005650.

Li, Bo, and Colin N. Dewey. 2011. “RSEM: Accurate Transcript Quantification from RNA-Seq Data with or without a Reference Genome.” BMC Bioinformatics 12 (1): 323.

Li, Heng, and Richard Durbin. 2009. “Fast and Accurate Short Read Alignment with Burrows-Wheeler Transform.” Bioinformatics  25 (14): 1754–60.

Li, Heng, Bob Handsaker, Alec Wysoker, Tim Fennell, Jue Ruan, Nils Homer, Gabor Marth, Goncalo Abecasis, Richard Durbin, and 1000 Genome Project Data Processing Subgroup. 2009. “The Sequence Alignment/Map Format and SAMtools.” Bioinformatics  25 (16): 2078–79.

Lyons, Eric, and Michael Freeling. 2008. “How to Usefully Compare Homologous Plant Genes and Chromosomes as DNA Sequences.” The Plant Journal: For Cell and Molecular Biology 53 (4): 661–73.

Lyons, Eric, Brent Pedersen, Josh Kane, Maqsudul Alam, Ray Ming, Haibao Tang, Xiyin Wang, et al. 2008. “Finding and Comparing Syntenic Regions among Arabidopsis and the Outgroups Papaya, Poplar, and Grape: CoGe with Rosids.” Plant Physiology 148 (4): 1772–81.

Martin, Marcel. 2011. “Cutadapt Removes Adapter Sequences from High-Throughput Sequencing Reads.” EMBnet.journal 17 (1): 10–12.

Merchant, Nirav, Eric Lyons, Stephen Goff, Matthew Vaughn, Doreen Ware, David Micklos, and 
Parker Antin. 2016. “The iPlant Collaborative: Cyberinfrastructure for Enabling Data to Discovery for the Life Sciences.” PLoS Biology 14 (1): e1002342.

Quinlan, Aaron R., and Ira M. Hall. 2010. “BEDTools: A Flexible Suite of Utilities for Comparing Genomic Features.” Bioinformatics  26 (6): 841–42.

Robinson, James T., Helga Thorvaldsdóttir, Wendy Winckler, Mitchell Guttman, Eric S. Lander, Gad Getz, and Jill P. Mesirov. 2011. “Integrative Genomics Viewer.” Nature Biotechnology 29 (1): 24–26.

Robinson, Mark D., Davis J. McCarthy, and Gordon K. Smyth. 2010. “edgeR: A Bioconductor Package for Differential Expression Analysis of Digital Gene Expression Data.” Bioinformatics  26 (1): 139–40.

Shannon, Paul, Andrew Markiel, Owen Ozier, Nitin S. Baliga, Jonathan T. Wang, Daniel Ramage, Nada Amin, Benno Schwikowski, and Trey Ideker. 2003. “Cytoscape: A Software Environment for Integrated Models of Biomolecular Interaction Networks.” Genome Research 13 (11): 2498–2504.

Smith-Unna, Richard, Chris Boursnell, Rob Patro, Julian M. Hibberd, and Steven Kelly. 2016. “TransRate: Reference-Free Quality Assessment of de Novo Transcriptome Assemblies.” Genome Research 26 (8): 1134–44.

Supek, Fran, Matko Bošnjak, Nives Škunca, and Tomislav Šmuc. 2011. “REVIGO Summarizes and Visualizes Long Lists of Gene Ontology Terms.” PloS One 6 (7): e21800.

Thorvaldsdóttir, Helga, James T. Robinson, and Jill P. Mesirov. 2013. “Integrative Genomics Viewer (IGV): High-Performance Genomics Data Visualization and Exploration.” Briefings in Bioinformatics 14 (2): 178–92.

Xi, Yuanxin, and Wei Li. 2009. “BSMAP: Whole Genome Bisulfite Sequence MAPping Program.” BMC Bioinformatics 10 (July): 232.

