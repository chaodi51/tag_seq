Building DAG of jobs...
Using shell: /usr/bin/bash
Provided cores: 8
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	diversity_beta
	1
Select jobs to execute...

[Thu Sep 30 00:57:53 2021]
rule diversity_beta:
    input: ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-unweighted-unifrac-distance-matrix.qza, sample_50cdiff_metadata.tsv
    output: ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-unweighted-unifrac-recurrence-significance.qzv
    log: logs/diversity_beta.log
    jobid: 0
    threads: 8


        conda activate qiime2-2019.7
        qiime diversity beta-group-significance \
            --i-distance-matrix ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-unweighted-unifrac-distance-matrix.qza \
            --m-metadata-file sample_50cdiff_metadata.tsv \
            --m-metadata-column recurrence_within_180_days \
            --o-visualization ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-unweighted-unifrac-recurrence-significance.qzv \
            --p-pairwise &> logs/diversity_beta.log 

        conda deactivate
        
[Thu Sep 30 00:58:25 2021]
Finished job 0.
1 of 1 steps (100%) done
