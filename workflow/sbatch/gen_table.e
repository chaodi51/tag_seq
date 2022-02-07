Building DAG of jobs...
Using shell: /usr/bin/bash
Provided cores: 1 (use --cores to define parallelism)
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	gen_table
	1
Select jobs to execute...

[Fri Apr 23 17:15:08 2021]
rule gen_table:
    input: ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table.qza
    output: ../results/qiime2/asv/dada2/table/feature-table.biom
    log: logs/exportBIOM.log
    jobid: 0

qiime tools export --input-path ../results/qiime2/asv/dada2/Kelly_AdultCDI_2020_16SrRNA-asv-table.qza --output-path ../results/qiime2/asv/dada2/table
[Fri Apr 23 17:15:32 2021]
Finished job 0.
1 of 1 steps (100%) done
