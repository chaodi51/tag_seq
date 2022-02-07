Building DAG of jobs...
Using shell: /usr/bin/bash
Provided cores: 1 (use --cores to define parallelism)
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	gen_tax
	1
Select jobs to execute...

[Thu Sep 30 11:54:15 2021]
rule gen_tax:
    input: ../results/qiime2/asv/taxonomy/Kelly_AdultCDI_2020_16SrRNA-taxonomy.qza, ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table_cdi_pos.qza, sample_50cdiff_metadata.tsv
    output: ../results/qiime2/asv/taxonomy/Kelly_AdultCDI_2020_16SrRNA-taxonomy.qzv, ../results/qiime2/asv/taxonomy/Kelly_AdultCDI_2020_16SrRNA-taxa_barplot.qzv
    log: logs/export_taxonomy.log
    jobid: 0


    qiime metadata tabulate       --m-input-file ../results/qiime2/asv/taxonomy/Kelly_AdultCDI_2020_16SrRNA-taxonomy.qza       --o-visualization ../results/qiime2/asv/taxonomy/Kelly_AdultCDI_2020_16SrRNA-taxonomy.qzv &> logs/export_taxonomy.log

    qiime tools export       --input-path ../results/qiime2/asv/taxonomy/Kelly_AdultCDI_2020_16SrRNA-taxonomy.qza       --output-path ../results/qiime2/asv/taxonomy/Kelly_AdultCDI_2020_16SrRNA &>> logs/export_taxonomy.log

    qiime taxa barplot       --i-table ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table_cdi_pos.qza       --i-taxonomy ../results/qiime2/asv/taxonomy/Kelly_AdultCDI_2020_16SrRNA-taxonomy.qza       --m-metadata-file sample_50cdiff_metadata.tsv       --o-visualization ../results/qiime2/asv/taxonomy/Kelly_AdultCDI_2020_16SrRNA-taxa_barplot.qzv &>> logs/export_taxonomy.log  
    
[Thu Sep 30 11:55:00 2021]
Finished job 0.
1 of 1 steps (100%) done
