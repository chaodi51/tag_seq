Building DAG of jobs...
Using shell: /usr/bin/bash
Provided cores: 8
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	diversity_alpha
	1
Select jobs to execute...

[Thu Sep 30 00:36:09 2021]
rule diversity_alpha:
    input: ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-faith-pd-vector.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-evenness-vector.qza, sample_50cdiff_metadata.tsv
    output: ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-faith-pd-group-significance.qzv, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-evenness-group-significance.qzv
    log: logs/diversity_alpha.log
    jobid: 0
    threads: 8


        conda activate qiime2-2019.7
        qiime diversity alpha-group-significance \
            --i-alpha-diversity ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-faith-pd-vector.qza\
            --m-metadata-file sample_50cdiff_metadata.tsv \
            --o-visualization ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-faith-pd-group-significance.qzv &> logs/diversity_alpha.log


        qiime diversity alpha-group-significance \
            --i-alpha-diversity ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-evenness-vector.qza \
            --m-metadata-file sample_50cdiff_metadata.tsv \
            --o-visualization ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-evenness-group-significance.qzv &>> logs/diversity_alpha.log  

        conda deactivate
        
[Thu Sep 30 00:36:49 2021]
Finished job 0.
1 of 1 steps (100%) done
