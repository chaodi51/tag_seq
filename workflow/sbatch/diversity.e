Building DAG of jobs...
Using shell: /usr/bin/bash
Provided cores: 8
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	core_metrics
	1
Select jobs to execute...

[Thu Sep 30 00:34:29 2021]
rule core_metrics:
    input: ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table_cdi_pos.qza, ../results/qiime2/asv/phylogeny/Kelly_AdultCDI_2020_16SrRNA-rooted_tree.qza, sample_50cdiff_metadata.tsv
    output: ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-rarefied-table.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-faith-pd-vector.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-observed-otus-vector.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-shannon-vector.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-evenness-vector.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-unweighted-unifrac-distance-matrix.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-weighted-unifrac-distance-matrix.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-jaccard-distance-matrix.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-bray-curtis-distance-matrix.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-unweighted-unifrac-pcoa-results.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-weighted-unifrac-pcoa-results.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-jaccard-pcoa-results.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-bray-curtis-pcoa-results.qza, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-unweighted-unifrac-emperor.qzv, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-weighted-unifrac-emperor.qzv, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-jaccard-emperor.qzv, ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-bray-curtis-emperor.qzv
    log: logs/diversity.log
    jobid: 0
    threads: 8


        ##  --p-sampling-depth should be carefully chosen by reviewing the table_summary file -asv-table.qzv
        conda activate qiime2-2019.7

        # echo "this tis to test conda..." &> logs/diversity.log
        qiime diversity core-metrics-phylogenetic \
            --i-phylogeny ../results/qiime2/asv/phylogeny/Kelly_AdultCDI_2020_16SrRNA-rooted_tree.qza \
            --i-table ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table_cdi_pos.qza \
            --p-sampling-depth 10000 \
            --p-n-jobs 8 \
            --m-metadata-file sample_50cdiff_metadata.tsv \
            --o-rarefied-table ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-rarefied-table.qza \
            --o-faith-pd-vector ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-faith-pd-vector.qza \
            --o-observed-otus-vector ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-observed-otus-vector.qza \
            --o-shannon-vector ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-shannon-vector.qza \
            --o-evenness-vector ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-evenness-vector.qza \
            --o-unweighted-unifrac-distance-matrix ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-unweighted-unifrac-distance-matrix.qza \
            --o-weighted-unifrac-distance-matrix ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-weighted-unifrac-distance-matrix.qza \
            --o-jaccard-distance-matrix ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-jaccard-distance-matrix.qza \
            --o-bray-curtis-distance-matrix ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-bray-curtis-distance-matrix.qza \
            --o-unweighted-unifrac-pcoa-results ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-unweighted-unifrac-pcoa-results.qza \
            --o-weighted-unifrac-pcoa-results ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-weighted-unifrac-pcoa-results.qza \
            --o-jaccard-pcoa-results ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-jaccard-pcoa-results.qza \
            --o-bray-curtis-pcoa-results ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-bray-curtis-pcoa-results.qza \
            --o-unweighted-unifrac-emperor ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-unweighted-unifrac-emperor.qzv \
            --o-weighted-unifrac-emperor ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-weighted-unifrac-emperor.qzv \
            --o-jaccard-emperor ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-jaccard-emperor.qzv \
            --o-bray-curtis-emperor ../results/qiime2/asv/diversity/core-metrics-results/Kelly_AdultCDI_2020_16SrRNA-bray-curtis-emperor.qzv &> logs/diversity.log

        conda deactivate   
        
[Thu Sep 30 00:35:04 2021]
Finished job 0.
1 of 1 steps (100%) done
