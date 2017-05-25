Raw Data Quality Control
FastQC (Andrews and Others 2010) - Quality metrics for high-throughput sequencing runs
 
Sequence Trimming 
Trimmomatic (Bolger, Lohse, and Usadel 2014) - Adapter and quality trimming
TrimGalore! (“Babraham Bioinformatics - Trim Galore!” 2017) (uses Cutadapt (“User Guide — Cutadapt 1.13 Documentation” 2017) - Adapter and quality trimming, extra functionality for bisulfite sequencing. 
 
Transcriptome Sequence Assembly
Trinity (Grabherr et al. 2011) - De novo assembly with downstream analysis capability
 
Sequence Read Mapping 
Bowtie(2) (Langmead et al. 2009) - Alignment tool for high-throughput sequencing
BWA (H. Li and Durbin 2009) - Alignment tool for high-throughput sequencing
STAR (Dobin et al. 2013) - Alignment tool for high-throughput sequencing to a reference genome
BSMAP (Xi and Li 2009) - Bisulfite sequencing specific alignment
Bismark (Krueger and Andrews 2011) - Bisulfite sequencing specific alignment (uses Bowtie)
Samtools (H. Li et al. 2009) -SAM/BAM manipulations: conversion, sorting, indexing etc.
 
Differential Expression and Differential Methylation Analysis
RSEM (B. Li and Dewey 2011) - Alignment based transcript abundance estimation
Kallisto - (Bray et al. 2016) Alignment-free transcript abundance estimation
EdgeR (M. D. Robinson, McCarthy, and Smyth 2010) R package for differential expression analysis
DeSeq  (Anders and Huber, n.d.) R package for differential expression analysis
Methylkit (Akalin et al. 2012) - R package for analysis of DNA methylation profiles 
MACAU (Lea, Tung, and Zhou 2015) - Differential methylation analysis for bisulfite sequencing data
 
Platforms for Genomic Analyses and Visualization
Galaxy (Afgan et al. 2016; Goecks et al. 2013) - Web-based platform for accessible, reproducible, and transparent analysis and visualization
Integrated Genome Viewer (IGV) (J. T. Robinson et al. 2011; Thorvaldsdóttir, Robinson, and Mesirov 2013) - Visualization tool for interactive exploration of large, integrated genomic datasets
CoGe (Lyons and Freeling 2008; Lyons et al. 2008) - Online system for making the retrieval and comparison of genomic information and sequence data 
Cyverse (Merchant et al. 2016) - Cyberinfrastructure for enabling data to discovery for the life sciences
Bedtools (Quinlan and Hall 2010) - Suite of utilities for comparing genomic features
Afgan, Enis, Dannon Baker, Marius van den Beek, Daniel Blankenberg, Dave Bouvier, Martin Čech, John Chilton, et al. 2016. “The Galaxy Platform for Accessible, Reproducible and Collaborative Biomedical Analyses: 2016 Update.” Nucleic Acids Research 44 (W1): W3–10.
Akalin, Altuna, Matthias Kormaksson, Sheng Li, Francine E. Garrett-Bakelman, Maria E. Figueroa, Ari Melnick, and Christopher E. Mason. 2012. “methylKit: A Comprehensive R Package for the Analysis of Genome-Wide DNA Methylation Profiles.” Genome Biology 13 (10): R87.
Anders, Simon, and Wolfgang Huber. n.d. “Di Erential Expression of RNA-Seq Data at the Gene Level the DESeq Package.” http://bioconductor.org/packages/release/bioc/vignettes/DESeq/inst/doc/DESeq.pdf.
Andrews, Simon, and Others. 2010. “FastQC: A Quality Control Tool for High Throughput Sequence Data.”
“Babraham Bioinformatics - Trim Galore!” 2017. Accessed May 19. https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/.
Bolger, Anthony M., Marc Lohse, and Bjoern Usadel. 2014. “Trimmomatic: A Flexible Trimmer for Illumina Sequence Data.” Bioinformatics  30 (15): 2114–20.
Bray, Nicolas L., Harold Pimentel, Páll Melsted, and Lior Pachter. 2016. “Near-Optimal Probabilistic RNA-Seq Quantification.” Nature Biotechnology 34 (5): 525–27.
Dobin, Alexander, Carrie A. Davis, Felix Schlesinger, Jorg Drenkow, Chris Zaleski, Sonali Jha, Philippe Batut, Mark Chaisson, and Thomas R. Gingeras. 2013. “STAR: Ultrafast Universal RNA-Seq Aligner.” Bioinformatics  29 (1). Oxford University Press: 15–21.
Goecks, Jeremy, Carl Eberhard, Tomithy Too, Galaxy Team, Anton Nekrutenko, and James Taylor. 2013. “Web-Based Visual Analysis for High-Throughput Genomics.” BMC Genomics 14 (June): 397.
Grabherr, Manfred G., Brian J. Haas, Moran Yassour, Joshua Z. Levin, Dawn A. Thompson, Ido Amit, Xian Adiconis, et al. 2011. “Full-Length Transcriptome Assembly from RNA-Seq Data without a Reference Genome.” Nature Biotechnology 29 (7): 644–52.
Krueger, Felix, and Simon R. Andrews. 2011. “Bismark: A Flexible Aligner and Methylation Caller for Bisulfite-Seq Applications.” Bioinformatics  27 (11): 1571–72.
Langmead, Ben, Cole Trapnell, Mihai Pop, and Steven L. Salzberg. 2009. “Ultrafast and Memory-Efficient Alignment of Short DNA Sequences to the Human Genome.” Genome Biology 10 (3): R25.
Lea, Amanda J., Jenny Tung, and Xiang Zhou. 2015. “A Flexible, Efficient Binomial Mixed Model for Identifying Differential DNA Methylation in Bisulfite Sequencing Data.” PLoS Genetics 11 (11): e1005650.
Li, Bo, and Colin N. Dewey. 2011. “RSEM: Accurate Transcript Quantification from RNA-Seq Data with or without a Reference Genome.” BMC Bioinformatics 12 (1): 323.
Li, Heng, and Richard Durbin. 2009. “Fast and Accurate Short Read Alignment with Burrows-Wheeler Transform.” Bioinformatics  25 (14): 1754–60.
Li, Heng, Bob Handsaker, Alec Wysoker, Tim Fennell, Jue Ruan, Nils Homer, Gabor Marth, Goncalo Abecasis, Richard Durbin, and 1000 Genome Project Data Processing Subgroup. 2009. “The Sequence Alignment/Map Format and SAMtools.” Bioinformatics  25 (16): 2078–79.
Lyons, Eric, and Michael Freeling. 2008. “How to Usefully Compare Homologous Plant Genes and Chromosomes as DNA Sequences.” The Plant Journal: For Cell and Molecular Biology 53 (4): 661–73.
Lyons, Eric, Brent Pedersen, Josh Kane, Maqsudul Alam, Ray Ming, Haibao Tang, Xiyin Wang, et al. 2008. “Finding and Comparing Syntenic Regions among Arabidopsis and the Outgroups Papaya, Poplar, and Grape: CoGe with Rosids.” Plant Physiology 148 (4): 1772–81.
Merchant, Nirav, Eric Lyons, Stephen Goff, Matthew Vaughn, Doreen Ware, David Micklos, and Parker Antin. 2016. “The iPlant Collaborative: Cyberinfrastructure for Enabling Data to Discovery for the Life Sciences.” PLoS Biology 14 (1): e1002342.
Quinlan, Aaron R., and Ira M. Hall. 2010. “BEDTools: A Flexible Suite of Utilities for Comparing Genomic Features.” Bioinformatics  26 (6): 841–42.
Robinson, James T., Helga Thorvaldsdóttir, Wendy Winckler, Mitchell Guttman, Eric S. Lander, Gad Getz, and Jill P. Mesirov. 2011. “Integrative Genomics Viewer.” Nature Biotechnology 29 (1): 24–26.
Robinson, Mark D., Davis J. McCarthy, and Gordon K. Smyth. 2010. “edgeR: A Bioconductor Package for Differential Expression Analysis of Digital Gene Expression Data.” Bioinformatics  26 (1): 139–40.
Thorvaldsdóttir, Helga, James T. Robinson, and Jill P. Mesirov. 2013. “Integrative Genomics Viewer (IGV): High-Performance Genomics Data Visualization and Exploration.” Briefings in Bioinformatics 14 (2): 178–92.
“User Guide — Cutadapt 1.13 Documentation.” 2017. Accessed May 19. http://cutadapt.readthedocs.io/en/stable/guide.html.
Xi, Yuanxin, and Wei Li. 2009. “BSMAP: Whole Genome Bisulfite Sequence MAPping Program.” BMC Bioinformatics 10 (July): 232.
