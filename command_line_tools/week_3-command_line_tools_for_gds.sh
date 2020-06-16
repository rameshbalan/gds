#!/usr/bin/zsh
# source ~/.zshrc
# conda activate week2_3
# wget https://d396qusza40orc.cloudfront.net/gencommand/gencommand_proj3_data.tar.gz
# tar -xzvf gencommand_proj3_data.tar.gz
# echo "For Q1-Q5"
# bowtie2-build wu_0.v7.fas wu_0
# echo "For Q6-Q14"
# bowtie2 -x wu_0 -U wu_0_A_wgs.fastq -S wu_0_complete_alignment.sam
# bowtie2 --local -x wu_0 -U wu_0_A_wgs.fastq -S wu_0_local_alignment.sam
# echo "For Q15-19"
# cut -f6 wu_0_complete_alignment.sam | grep -c -e 'D' -e 'I'
# cut -f6 wu_0_local_alignment.sam | grep -c -e 'D' -e 'I'
# cut -f8 wu_uncompressed.vcf| grep "DP" | cut -f1 -d ';' | grep -cE 'DP=([2-9][0-9])'
# samtools view -S -b wu_0_complete_alignment.sam > wu_0_complete_alignment.bam
# samtools sort wu_0_complete_alignment.bam -o wu_0_complete_alignment.sorted.bam -O bam -T 
# wu_0_complete_alignment_sorted
# echo "For Q20-24"