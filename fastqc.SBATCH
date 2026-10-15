#!/bin/bash
#SBATCH --job-name=trimmomatic_practice --output=z01.%x
#SBATCH --mail-type=END,FAIL --mail-user=hjr47@georgetown.edu
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=1 --time=72:00:00
#SBATCH --mem=4G

#------------set enviornment, load module--------------#
shopt -s expand_aliases
module load trimmomatic
#------------------------------------------------------#

#------------------run trimmomatic---------------------#
trimmomatic PE \
EC-12_R1_001.fastq.gz \
EC-12_R2_001.fastq.gz \
output_R1_pairedend.fq.gz output_R1_singleend.fq.gz \
output_R2_pairedend.fq.gz output_R2_singleend.fq.gz \
LEADING:10 \
TRAILING:10 \
MINLEN:75
#-----------------------------------------------------#

