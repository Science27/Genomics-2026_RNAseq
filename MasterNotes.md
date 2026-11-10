### Description of the research goals and experimental design
This project works with Candida albicans, a commensal yeast that can cause a variety of diseases, including urinary tract and blood infections. The goal of the proejct is to explore how Candida albicans gene expression differs in presence of thiamine and thiamine-deficient enviornments and whether this relates to C. albicans virulence. 

The data was constructed from a single biological replicate (B) that was exposed to thiamine and thiamine-deficient enviornments. The data consists of the paired end fastqc sequencing files for both conditions. The forward and reverse files for Candida albicans grown on a thiamine-containing media are WTB1_1.fq.gz and WTB1_2.fq.gz, respectively. The forward and reverse files for Candida albicans grown on a thiamine-deficient media are WTB2_1.fq.gz and WTB2_2.fq.gz. WTB1 refers to the population grown in thiamime-containing media. WTB2 refers to the population grown in thiamine deficient media. 

### Initial assessment of read quality (fastQC analysis)
Forward and reverse read quality was assessed using fastQC. WTB1_1.fq.gz and WTB1_2.fq.gz each contained 20723512 reads while WTB2_1.fq.gz and WTB2_2.fq.gz had 20353936 reads. The per-base sequence content in the first ten bases of reads exhibtied signifigant variability. Additionally, a significant number of sequecnes exhibited ten-fold or greater sequence duplication. Duplication issues were not addressed as it could affect downstream gene expression analysis. The distribution of GC content per read differed marginally from the theoretical distribution. The ends of reads exhibited elevated adapter content. 

Below are the FastQC reports for the WTB1 and WTB2 forward and reverse files BEFORE cleaning:

[WTB1_1.fq.gz_FastQC Report.pdf](https://github.com/user-attachments/files/34608685/WTB1_1.fq.gz_fastQC.pdf)

[WTB1_2.fq.gz_FastQC Report.pdf](https://github.com/user-attachments/files/34608715/WTB1_2.fq.gz_FastQC.Report.pdf)

[WTB2_1.fq.gz_FastQC Report.pdf](https://github.com/user-attachments/files/34608747/WTB2_1.fq.gz_FastQC.Report.pdf)

[WTB2_2.fq.gz_FastQC Report.pdf](https://github.com/user-attachments/files/34608763/WTB2_2.fq.gz_FastQC.Report.pdf)

### Read cleaning and analysis (trimmomatic and post-cleaning fastQC)
Trimmomatic was used to clean the forward and reverse files of both experimental conditions. HEADCROP: 17 was used to remove the first few bases of each read, which exhibited greater variation in per-base sequence content before cleaning.

The trimmomatic sbatch files are trimmomatic_WTB1_1 and trimmomatic_WTB2_2 for the paired-end files of the thiamine and thiamine-deficienyt conditions, respectively. The forward paired and single-end output files for WTB1 are WTB1_1_trmPE.fq.gz and WTB1_1_trmSE.fq.gz, respectively. The reverse paried and single-end output files for WTB1 are WTB1_2_trmPE.fq.gz and WTB1_2_trmSE.fq.gz. The forward paired and single-end output files for WTB2 are WTB2_1_trmPE.fq.gz and WTB1_1_trmSE.fq.gz. The reverse paried and single-end output files for WTB2 are WTB2_2_trmPE.fq.gz and WTB1_2_trmSE.fq.gz.

The trimmomatic sbatch script can be found here:

[trimmomatic script - WTB1](Scripts/trimmomatic_WTB1_1)

[trimmomatic script - WTB2](Scripts/trimmomatic_WTB2_2)

FastQC was used to analyze the read quality of the forward and reverse paired-end output files: WTB1_1_trmPE.fq.gz, WTB1_2_trmPE.fq.gz, WTB2_1_trmPE.fq.gz, and WTB2_2_trmPE.fq.gz.

WTB1_1_trmPE.fq.gz and WTB1_2_trmPE.fq.gz each containted 20051122 reads, which represents a 3.24% reduction in the number of reads when compared to the uncleaned forward and reverse WTB1 files: WTB1_1.fq.gz and WTB1_2.fq.gz. 

WTB2_1_trmPE.fq.gz and WTB2_2_trmPE.fq.gz each contained 19629995 reads, which represents a 3.56% reduction in the number of reads when compared to the uncleaned forward and reverse WTB2 files: WTB2_1.fq.gz and WTB2_2.fq.gz.

Removal of the first seventeen bases resulted in consistent per-base content across reads. A signifigant number of sequences exhibited ten-fold or greater duplication. Adapter content remained elevated at the ends of reads in each of the four files. 

Below are the FastQC reports for the WTB1 and WTB2 forward and reverse files AFTER cleaning:

[WTB1_1_trmPE.fq.gz FastQC Report.pdf](https://github.com/user-attachments/files/34610818/WTB1_1_trmPE.fq.gz.FastQC.Report.pdf)

[WTB1_2_trmPE.fq.gz FastQC Report.pdf](https://github.com/user-attachments/files/34610833/WTB1_2_trmPE.fq.gz.FastQC.Report.pdf)

[WTB2_1_trmPE.fq.gz FastQC Report.pdf](https://github.com/user-attachments/files/34610852/WTB2_1_trmPE.fq.gz.FastQC.Report.pdf)

[WTB2_2_trmPE.fq.gz FastQC Report.pdf](https://github.com/user-attachments/files/34610923/WTB2_2_trmPE.fq.gz.FastQC.Report.pdf)

### Aligning Reads to Reference Genome (Bowtie2)
Bowtie2 was used to align the trimed paired-end reads of WTB1 and WTB2 to the Candida albicans reference genome. 






