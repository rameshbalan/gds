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
