
# BLAST

Here is an example of how one might take a multi sequence fasta file and using NCBI Blast, compare the sequences with the Swiss-Prot Database on their own computer.

## Download Stand-alone BLAST

`ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/`

You could add the programs to your system PATH, however I prefer to use absolute paths / variables. 


```python
bldir = "/Applications/bioinfo/ncbi-blast-2.7.1+/bin/"
```


```python
#showing how file path variable is working
!{bldir}blastx -h
```

    USAGE
      blastx [-h] [-help] [-import_search_strategy filename]
        [-export_search_strategy filename] [-task task_name] [-db database_name]
        [-dbsize num_letters] [-gilist filename] [-seqidlist filename]
        [-negative_gilist filename] [-negative_seqidlist filename]
        [-entrez_query entrez_query] [-db_soft_mask filtering_algorithm]
        [-db_hard_mask filtering_algorithm] [-subject subject_input_file]
        [-subject_loc range] [-query input_file] [-out output_file]
        [-evalue evalue] [-word_size int_value] [-gapopen open_penalty]
        [-gapextend extend_penalty] [-qcov_hsp_perc float_value]
        [-max_hsps int_value] [-xdrop_ungap float_value] [-xdrop_gap float_value]
        [-xdrop_gap_final float_value] [-searchsp int_value]
        [-sum_stats bool_value] [-max_intron_length length] [-seg SEG_options]
        [-soft_masking soft_masking] [-matrix matrix_name]
        [-threshold float_value] [-culling_limit int_value]
        [-best_hit_overhang float_value] [-best_hit_score_edge float_value]
        [-window_size int_value] [-ungapped] [-lcase_masking] [-query_loc range]
        [-strand strand] [-parse_deflines] [-query_gencode int_value]
        [-outfmt format] [-show_gis] [-num_descriptions int_value]
        [-num_alignments int_value] [-line_length line_length] [-html]
        [-max_target_seqs num_sequences] [-num_threads int_value] [-remote]
        [-comp_based_stats compo] [-use_sw_tback] [-version]
    
    DESCRIPTION
       Translated Query-Protein Subject BLAST 2.7.1+
    
    Use '-help' to print detailed descriptions of command line arguments


## Create a Blast Database

I would like to make a database of UniProt/Swiss-prot.


```python
!curl \
ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/complete/uniprot_sprot.fasta.gz \
> ../blastdb/uniprot_sprot.fasta.gz   
```

      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    100 84.0M  100 84.0M    0     0   860k      0  0:01:40  0:01:40 --:--:--  536k 0   869k      0  0:01:38  0:00:06  0:01:32 1051k1M    0     0   914k      0  0:01:34  0:00:17  0:01:17  930k6 84.0M   66 55.9M    0     0   939k      0  0:01:31  0:01:01  0:00:30  927k     0   941k      0  0:01:31  0:01:04  0:00:27  939k



```python
!gunzip -k ../blastdb/uniprot_sprot.fasta.gz
```


```python
#appeninding version number to database
!{bldir}makeblastdb \
-in ../blastdb/uniprot_sprot.fasta \
-dbtype prot \
-out ../blastdb/uniprot_sprot_r2018_08 
```

    
    
    Building a new DB, current time: 09/21/2018 11:19:03
    New DB name:   /Users/sr320/Documents/GitHub/fun-gen/blastdb/uniprot_sprot_r2018_08
    New DB title:  ../blastdb/uniprot_sprot.fasta
    Sequence type: Protein
    Keep MBits: T
    Maximum file size: 1000000000B
    Adding sequences from FASTA; added 558125 sequences in 16.3798 seconds.


## Get a Query Sequence


```python
#getting file from url to local location
!curl http://eagle.fish.washington.edu/cnidarian/Ab_4denovo_CLC6_a.fa \
> ../data/Ab_4denovo_CLC6_a.fa
```

      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    100 1982k  100 1982k    0     0  1982k      0  0:00:01 --:--:--  0:00:01 49.6M



```python
#lets get a preview
!head ../data/Ab_4denovo_CLC6_a.fa
```

    >solid0078_20110412_FRAG_BC_WHITE_WHITE_F3_QV_SE_trimmed_contig_1
    ACACCCCACCCCAACGCACCCTCACCCCCACCCCAACAATCCATGATTGAATACTTCATC
    TATCCAAGACAAACTCCTCCTACAATCCATGATAGAATTCCTCCAAAAATAATTTCACAC
    TGAAACTCCGGTATCCGAGTTATTTTGTTCCCAGTAAAATGGCATCAACAAAAGTAGGTC
    TGGATTAACGAACCAATGTTGCTGCGTAATATCCCATTGACATATCTTGTCGATTCCTAC
    CAGGATCCGGACTGACGAGATTTCACTGTACGTTTATGCAAGTCATTTCCATATATAAAA
    TTGGATCTTATTTGCACAGTTAAATGTCTCTATGCTTATTTATAAATCAATGCCCGTAAG
    CTCCTAATATTTCTCTTTTCGTCCGACGAGCAAACAGTGAGTTTACTGTGGCCTTCAGCA
    AAAGTATTGATGTTGTAAATCTCAGTTGTGATTGAACAATTTGCCTCACTAGAAGTAGCC
    TTC



```python
#how many sequences? lets count ">" as we know each contig has 1
!grep -c ">" Ab_4denovo_CLC6_a.fa
```

    5490


## Run Blast


```python

!{bldir}blastx \
-query ../data/Ab_4denovo_CLC6_a.fa \
-db ../blastdb/uniprot_sprot_r2018_08  \
-out ../analyses/Ab_4-uniprot_blastx.tab \
-evalue 1E-20 \
-num_threads 4 \
-max_target_seqs 1 \
-outfmt 6
```


```python
!head ../analyses/Ab_4-uniprot_blastx.tab
```


```python
#how many blast hits?
!wc -l ../analyses/Ab_4-uniprot_blastx.tab
```
