Building DAG of jobs...
Using shell: /usr/bin/bash
Provided cores: 1 (use --cores to define parallelism)
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	sample_filter
	1
Select jobs to execute...

[Thu Sep 30 11:36:43 2021]
rule sample_filter:
    input: ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table.qza, ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-rep-seqs.qza, sample_50cdiff_metadata.tsv
    output: ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table_cdi_pos.qza, ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table_cdi_pos.qzv, ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-rep-seqs_cdi_pos.qza, ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-rep-seqs_cdi_pos.qzv
    log: logs/sample_filter.log
    jobid: 0


        conda activate qiime2-2019.7

        qiime feature-table filter-samples             --i-table ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table.qza             --m-metadata-file sample_50cdiff_metadata.tsv             --o-filtered-table ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table_cdi_pos.qza &> logs/sample_filter.log

        qiime feature-table summarize             --i-table ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table_cdi_pos.qza             --o-visualization ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table_cdi_pos.qzv             --m-sample-metadata-file sample_50cdiff_metadata.tsv --verbose &>> logs/sample_filter.log   

        qiime feature-table filter-seqs             --i-data ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-rep-seqs.qza             --i-table ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table_cdi_pos.qza             --o-filtered-data ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-rep-seqs_cdi_pos.qza &>> logs/sample_filter.log 

        qiime feature-table tabulate-seqs             --i-data ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-rep-seqs_cdi_pos.qza             --o-visualization ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-rep-seqs_cdi_pos.qzv --verbose &>> logs/sample_filter.log
         conda deactivate
        
[Thu Sep 30 11:37:58 2021]
Finished job 0.
1 of 1 steps (100%) done
