### Description of the research goals and experimental design
This project works with Candida albicans, a commensal yeast that can cause a variety of diseases, including urinary tract and blood infections. The goal of the proejct is to explore how Candida albicans gene expression differs in presence of thiamine and thiamine-deficient enviornments and whether this relates to C. albicans virulence. 

The data was constructed from a single biological replicate (B) that was exposed to thiamine and thiamine-deficient enviornments. The data consists of the paired end fastqc sequencing files for both conditions. The forward and reverse files for Candida albicans grown on a thiamine-containing media are WTB1_1.fq.gz and WTB1_2.fq.gz, respectively. The forward and reverse files for Candida albicans grown on a thiamine-deficient media are WTB2_1.fq.gz and WTB2_2.fq.gz. 

### Initial assessment of read quality (fastQC analysis)
Forward and reverse read quality was assessed using fastQC. WTB1_1.fq.gz and WTB1_2.fq.gz each contained 20723512 reads while WTB2_1.fq.gz and WTB2_2.fq.gz had 20353936 reads. The per-base sequence content in the first ten bases of reads exhibtied signifigant variability. Additionally, a significant number of  sequecnes exhibited ten-fold or greater sequence duplication. The distribution of GC content per read differed from the theoretical distribution. 

[lab 8 report.pdf](https://github.com/user-attachments/files/34608523/lab.8.report.pdf)


### Read cleaning (trimmomatic)
Trimmomatic was used to clean the forward and reverse files of each experimental condition. 
