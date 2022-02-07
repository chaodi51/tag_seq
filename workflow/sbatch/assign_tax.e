Building DAG of jobs...
Using shell: /usr/bin/bash
Provided cores: 1 (use --cores to define parallelism)
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	assign_tax
	1
Select jobs to execute...

[Thu Sep 30 11:49:43 2021]
rule assign_tax:
    input: ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-rep-seqs_cdi_pos.qza, ../resources/gg-13-8-99-nb-classifier.qza
    output: ../results/qiime2/asv/taxonomy/Kelly_AdultCDI_2020_16SrRNA-taxonomy.qza
    log: logs/assign_tax.log
    jobid: 0


      conda activate qiime2-2019.7
      qiime feature-classifier classify-sklearn         --i-classifier ../resources/gg-13-8-99-nb-classifier.qza         --i-reads ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-rep-seqs_cdi_pos.qza         --o-classification ../results/qiime2/asv/taxonomy/Kelly_AdultCDI_2020_16SrRNA-taxonomy.qza &> logs/assign_tax.log

      conda deactivate    
    
[Thu Sep 30 11:53:20 2021]
Finished job 0.
1 of 1 steps (100%) done
