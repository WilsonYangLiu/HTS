#!/bin/bash
# This script is generated by HTS based on your own configration, automatically
# if you have any question or any advise, please dont hesitate to contate me:
# Author: Wei-Xin Liu
# Mail: lweixin316@gmail.com)

bwa mem -M -t 24 -R '@RG\tID:foo\tSM:bar\tLB:library1' ../../index/bwa/hg19 WGC075470R_combined_R2.fastq.gz WGC075470R_combined_R1.fastq.gz 1> WGC075470R_combined.sam 2> WGC075470R_combined.bwa.align.log
bwa mem -M -t 24 -R '@RG\tID:foo\tSM:bar\tLB:library1' ../../index/bwa/hg19 WGC075471R_combined_R2.fastq.gz WGC075471R_combined_R1.fastq.gz 1> WGC075471R_combined.sam 2> WGC075471R_combined.bwa.align.log
bwa mem -M -t 24 -R '@RG\tID:foo\tSM:bar\tLB:library1' ../../index/bwa/hg19 WGC075472R_combined_R2.fastq.gz WGC075472R_combined_R1.fastq.gz 1> WGC075472R_combined.sam 2> WGC075472R_combined.bwa.align.log
bwa mem -M -t 24 -R '@RG\tID:foo\tSM:bar\tLB:library1' ../../index/bwa/hg19 WGC075468R_combined_R2.fastq.gz WGC075468R_combined_R1.fastq.gz 1> WGC075468R_combined.sam 2> WGC075468R_combined.bwa.align.log
bwa mem -M -t 24 -R '@RG\tID:foo\tSM:bar\tLB:library1' ../../index/bwa/hg19 WGC075473R_combined_R2.fastq.gz WGC075473R_combined_R1.fastq.gz 1> WGC075473R_combined.sam 2> WGC075473R_combined.bwa.align.log
bwa mem -M -t 24 -R '@RG\tID:foo\tSM:bar\tLB:library1' ../../index/bwa/hg19 WGC075467R_combined_R2.fastq.gz WGC075467R_combined_R1.fastq.gz 1> WGC075467R_combined.sam 2> WGC075467R_combined.bwa.align.log
bwa mem -M -t 24 -R '@RG\tID:foo\tSM:bar\tLB:library1' ../../index/bwa/hg19 WGC075469R_combined_R2.fastq.gz WGC075469R_combined_R1.fastq.gz 1> WGC075469R_combined.sam 2> WGC075469R_combined.bwa.align.log
mkdir FASTQ && mv WGC075467R_combined_R2.fastq.gz* WGC075468R_combined_R2.fastq.gz* WGC075469R_combined_R2.fastq.gz* WGC075470R_combined_R2.fastq.gz* WGC075471R_combined_R2.fastq.gz* WGC075472R_combined_R2.fastq.gz* WGC075473R_combined_R2.fastq.gz* WGC075467R_combined_R1.fastq.gz* WGC075468R_combined_R1.fastq.gz* WGC075469R_combined_R1.fastq.gz* WGC075470R_combined_R1.fastq.gz* WGC075471R_combined_R1.fastq.gz* WGC075472R_combined_R1.fastq.gz* WGC075473R_combined_R1.fastq.gz* FASTQ/
samtools sort -@ 24 -o WGC075470R_combined.sorted.bam -T temp WGC075470R_combined.sam
samtools index WGC075470R_combined.sorted.bam
samtools sort -@ 24 -o WGC075471R_combined.sorted.bam -T temp WGC075471R_combined.sam
samtools index WGC075471R_combined.sorted.bam
samtools sort -@ 24 -o WGC075472R_combined.sorted.bam -T temp WGC075472R_combined.sam
samtools index WGC075472R_combined.sorted.bam
samtools sort -@ 24 -o WGC075468R_combined.sorted.bam -T temp WGC075468R_combined.sam
samtools index WGC075468R_combined.sorted.bam
samtools sort -@ 24 -o WGC075473R_combined.sorted.bam -T temp WGC075473R_combined.sam
samtools index WGC075473R_combined.sorted.bam
samtools sort -@ 24 -o WGC075467R_combined.sorted.bam -T temp WGC075467R_combined.sam
samtools index WGC075467R_combined.sorted.bam
samtools sort -@ 24 -o WGC075469R_combined.sorted.bam -T temp WGC075469R_combined.sam
samtools index WGC075469R_combined.sorted.bam
mkdir SAM && mv WGC075467R_combined.sam WGC075468R_combined.sam WGC075469R_combined.sam WGC075470R_combined.sam WGC075471R_combined.sam WGC075472R_combined.sam WGC075473R_combined.sam SAM/
mv WGC075470R_combined.sorted.bam WGC075470R.merge.bam
mv WGC075470R_combined.sorted.bam.bai WGC075470R.merge.bam.bai
mv WGC075471R_combined.sorted.bam WGC075471R.merge.bam
mv WGC075471R_combined.sorted.bam.bai WGC075471R.merge.bam.bai
mv WGC075472R_combined.sorted.bam WGC075472R.merge.bam
mv WGC075472R_combined.sorted.bam.bai WGC075472R.merge.bam.bai
mv WGC075468R_combined.sorted.bam WGC075468R.merge.bam
mv WGC075468R_combined.sorted.bam.bai WGC075468R.merge.bam.bai
mv WGC075473R_combined.sorted.bam WGC075473R.merge.bam
mv WGC075473R_combined.sorted.bam.bai WGC075473R.merge.bam.bai
mv WGC075467R_combined.sorted.bam WGC075467R.merge.bam
mv WGC075467R_combined.sorted.bam.bai WGC075467R.merge.bam.bai
mv WGC075469R_combined.sorted.bam WGC075469R.merge.bam
mv WGC075469R_combined.sorted.bam.bai WGC075469R.merge.bam.bai
mv WGC075470R.merge.bam WGC075470R.sorted.merge.bam
mv WGC075470R.merge.bam.bai WGC075470R.sorted.merge.bam.bai
mv WGC075471R.merge.bam WGC075471R.sorted.merge.bam
mv WGC075471R.merge.bam.bai WGC075471R.sorted.merge.bam.bai
mv WGC075472R.merge.bam WGC075472R.sorted.merge.bam
mv WGC075472R.merge.bam.bai WGC075472R.sorted.merge.bam.bai
mv WGC075468R.merge.bam WGC075468R.sorted.merge.bam
mv WGC075468R.merge.bam.bai WGC075468R.sorted.merge.bam.bai
mv WGC075473R.merge.bam WGC075473R.sorted.merge.bam
mv WGC075473R.merge.bam.bai WGC075473R.sorted.merge.bam.bai
mv WGC075467R.merge.bam WGC075467R.sorted.merge.bam
mv WGC075467R.merge.bam.bai WGC075467R.sorted.merge.bam.bai
mv WGC075469R.merge.bam WGC075469R.sorted.merge.bam
mv WGC075469R.merge.bam.bai WGC075469R.sorted.merge.bam.bai
java -Xmx2g -jar ../../app/picard-2.9.2/picard.jar MarkDuplicates VALIDATION_STRINGENCY=LENIENT CREATE_INDEX=false TMP_DIR=temp TAGGING_POLICY=All REMOVE_DUPLICATES=true INPUT=WGC075470R.sorted.merge.bam OUTPUT=WGC075470R.rmdup.bam METRICS_FILE=WGC075470R.picard.metrics 2> WGC075470R.picard.log
samtools view -q 1 -h WGC075470R.rmdup.bam | samtools sort -@ 24 -o WGC075470R.uniAln.rmdup.bam
samtools index WGC075470R.uniAln.rmdup.bam
java -Xmx2g -jar ../../app/picard-2.9.2/picard.jar MarkDuplicates VALIDATION_STRINGENCY=LENIENT CREATE_INDEX=false TMP_DIR=temp TAGGING_POLICY=All REMOVE_DUPLICATES=true INPUT=WGC075471R.sorted.merge.bam OUTPUT=WGC075471R.rmdup.bam METRICS_FILE=WGC075471R.picard.metrics 2> WGC075471R.picard.log
samtools view -q 1 -h WGC075471R.rmdup.bam | samtools sort -@ 24 -o WGC075471R.uniAln.rmdup.bam
samtools index WGC075471R.uniAln.rmdup.bam
java -Xmx2g -jar ../../app/picard-2.9.2/picard.jar MarkDuplicates VALIDATION_STRINGENCY=LENIENT CREATE_INDEX=false TMP_DIR=temp TAGGING_POLICY=All REMOVE_DUPLICATES=true INPUT=WGC075472R.sorted.merge.bam OUTPUT=WGC075472R.rmdup.bam METRICS_FILE=WGC075472R.picard.metrics 2> WGC075472R.picard.log
samtools view -q 1 -h WGC075472R.rmdup.bam | samtools sort -@ 24 -o WGC075472R.uniAln.rmdup.bam
samtools index WGC075472R.uniAln.rmdup.bam
java -Xmx2g -jar ../../app/picard-2.9.2/picard.jar MarkDuplicates VALIDATION_STRINGENCY=LENIENT CREATE_INDEX=false TMP_DIR=temp TAGGING_POLICY=All REMOVE_DUPLICATES=true INPUT=WGC075468R.sorted.merge.bam OUTPUT=WGC075468R.rmdup.bam METRICS_FILE=WGC075468R.picard.metrics 2> WGC075468R.picard.log
samtools view -q 1 -h WGC075468R.rmdup.bam | samtools sort -@ 24 -o WGC075468R.uniAln.rmdup.bam
samtools index WGC075468R.uniAln.rmdup.bam
java -Xmx2g -jar ../../app/picard-2.9.2/picard.jar MarkDuplicates VALIDATION_STRINGENCY=LENIENT CREATE_INDEX=false TMP_DIR=temp TAGGING_POLICY=All REMOVE_DUPLICATES=true INPUT=WGC075473R.sorted.merge.bam OUTPUT=WGC075473R.rmdup.bam METRICS_FILE=WGC075473R.picard.metrics 2> WGC075473R.picard.log
samtools view -q 1 -h WGC075473R.rmdup.bam | samtools sort -@ 24 -o WGC075473R.uniAln.rmdup.bam
samtools index WGC075473R.uniAln.rmdup.bam
java -Xmx2g -jar ../../app/picard-2.9.2/picard.jar MarkDuplicates VALIDATION_STRINGENCY=LENIENT CREATE_INDEX=false TMP_DIR=temp TAGGING_POLICY=All REMOVE_DUPLICATES=true INPUT=WGC075467R.sorted.merge.bam OUTPUT=WGC075467R.rmdup.bam METRICS_FILE=WGC075467R.picard.metrics 2> WGC075467R.picard.log
samtools view -q 1 -h WGC075467R.rmdup.bam | samtools sort -@ 24 -o WGC075467R.uniAln.rmdup.bam
samtools index WGC075467R.uniAln.rmdup.bam
java -Xmx2g -jar ../../app/picard-2.9.2/picard.jar MarkDuplicates VALIDATION_STRINGENCY=LENIENT CREATE_INDEX=false TMP_DIR=temp TAGGING_POLICY=All REMOVE_DUPLICATES=true INPUT=WGC075469R.sorted.merge.bam OUTPUT=WGC075469R.rmdup.bam METRICS_FILE=WGC075469R.picard.metrics 2> WGC075469R.picard.log
samtools view -q 1 -h WGC075469R.rmdup.bam | samtools sort -@ 24 -o WGC075469R.uniAln.rmdup.bam
samtools index WGC075469R.uniAln.rmdup.bam
samtools mpileup -ugf ../../genome/hg19/hg19.fa WGC075470R.uniAln.rmdup.bam | bcftools call --threads 1 -vmO z -o WGC075470R.vcf.gz
tabix -p vcf WGC075470R.vcf.gz
bcftools filter -O z -s LOWQUAL -i '%QUAL>10' -o WGC075470R.flt.vcf.gz WGC075470R.vcf.gz
samtools mpileup -ugf ../../genome/hg19/hg19.fa WGC075471R.uniAln.rmdup.bam | bcftools call --threads 1 -vmO z -o WGC075471R.vcf.gz
tabix -p vcf WGC075471R.vcf.gz
bcftools filter -O z -s LOWQUAL -i '%QUAL>10' -o WGC075471R.flt.vcf.gz WGC075471R.vcf.gz
samtools mpileup -ugf ../../genome/hg19/hg19.fa WGC075472R.uniAln.rmdup.bam | bcftools call --threads 1 -vmO z -o WGC075472R.vcf.gz
tabix -p vcf WGC075472R.vcf.gz
bcftools filter -O z -s LOWQUAL -i '%QUAL>10' -o WGC075472R.flt.vcf.gz WGC075472R.vcf.gz
samtools mpileup -ugf ../../genome/hg19/hg19.fa WGC075468R.uniAln.rmdup.bam | bcftools call --threads 1 -vmO z -o WGC075468R.vcf.gz
tabix -p vcf WGC075468R.vcf.gz
bcftools filter -O z -s LOWQUAL -i '%QUAL>10' -o WGC075468R.flt.vcf.gz WGC075468R.vcf.gz
samtools mpileup -ugf ../../genome/hg19/hg19.fa WGC075473R.uniAln.rmdup.bam | bcftools call --threads 1 -vmO z -o WGC075473R.vcf.gz
tabix -p vcf WGC075473R.vcf.gz
bcftools filter -O z -s LOWQUAL -i '%QUAL>10' -o WGC075473R.flt.vcf.gz WGC075473R.vcf.gz
samtools mpileup -ugf ../../genome/hg19/hg19.fa WGC075467R.uniAln.rmdup.bam | bcftools call --threads 1 -vmO z -o WGC075467R.vcf.gz
tabix -p vcf WGC075467R.vcf.gz
bcftools filter -O z -s LOWQUAL -i '%QUAL>10' -o WGC075467R.flt.vcf.gz WGC075467R.vcf.gz
samtools mpileup -ugf ../../genome/hg19/hg19.fa WGC075469R.uniAln.rmdup.bam | bcftools call --threads 1 -vmO z -o WGC075469R.vcf.gz
tabix -p vcf WGC075469R.vcf.gz
bcftools filter -O z -s LOWQUAL -i '%QUAL>10' -o WGC075469R.flt.vcf.gz WGC075469R.vcf.gz