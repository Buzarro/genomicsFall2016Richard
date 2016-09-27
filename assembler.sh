bwa index s_paradoxus_mt.fa
bwa mem s_paradoxus_mt.fa SRR1868762.fastq > paradoxus62.sam
samtools view -b -o paradoxus62.bam -S paradoxus62.sam
samtools sort paradoxus62.bam paradoxus62.sorted
samtools mpileup -uf s_paradoxus_mt.fa paradoxus62.sorted.bam | bcftools view -vcg - > paradoxus62.vcf
echo "DONE"
