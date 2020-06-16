echo "How many alignments does the set contain?"
samtools flagstat athal_wu_0_A.bam 
echo "How many alignments show the reads's mate unmapped?"
samtools view athal_wu_0_A.bam | cut -f 7 | grep -c '*'
echo "How many alignments conatain a deletion (D)?"
samtools view athal_wu_0_A.bam | cut -f 6 | grep -c 'D'
echo "How many alignments show the reads's mate mapped to the same chromosome?"
samtools view athal_wu_0_A.bam | cut -f 7 | grep -c '='
echo "How many alignments are spliced?"
samtools view athal_wu_0_A.bam | cut -f 6 | grep -c 'N'
# samtools view -h athal_wu_0_A.bam "Chr3:11,777,000-11,794,000" > athal_wu_0_A_chr3_11777000_11794000.sam

echo "How many alignments does the set contain?"
samtools flagstat athal_wu_0_A_ch*.sam 
echo "How many alignments show the reads's mate unmapped?"
samtools view athal_wu_0_A_ch*.sam | cut -f 7 | grep -c '*'
echo "How many alignments conatain a deletion (D)?"
samtools view athal_wu_0_A_ch*.sam | cut -f 6 | grep -c 'D'
echo "How many alignments show the reads's mate mapped to the same chromosome?"
samtools view athal_wu_0_A_ch*.sam | cut -f 7 | grep -c '='
echo "How many alignments are spliced?"
samtools view athal_wu_0_A_ch*.sam | cut -f 6 | grep -c 'N'

echo "How many sequences are there in the genome?"
samtools view -H athal_wu_0_A.bam | grep -c "SN:"
echo "What is the length of the first sequence in the genome file?"
samtools view -H athal_wu_0_A.bam | grep "SN:" |head
echo "What alignment tool was used?"
samtools view -H athal_wu_0_A.bam | head -15
echo "What is the read identifier for the first alignment?"

echo "How many overlaps are reported?"
bedtools intersect -wo -a athal_wu_0_A_annot.gtf -b athal_wu_0_A.bam | wc -l

echo "How many of these are 10 bases or longer?"
bedtools intersect -wo -a athal_wu_0_A_annot.gtf -b athal_wu_0_A.bam | rev | cut -f1 | awk '$1>10' | wc -l

echo "Q20"
bedtools intersect -wo -a athal_wu_0_A_annot.gtf -b athal_wu_0_A.bam |cut -f9 |cut -d ";" -f2 |cut -d ":" -f2 | sort | uniq -c |wc -l

