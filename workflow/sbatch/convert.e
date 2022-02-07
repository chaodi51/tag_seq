Building DAG of jobs...
Using shell: /usr/bin/bash
Provided cores: 1 (use --cores to define parallelism)
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	convert
	1
Select jobs to execute...

[Fri Apr 23 17:24:35 2021]
rule convert:
    input: ../results/qiime2/asv/dada2/table/feature-table.biom
    output: ../results/qiime2/asv/dada2/table/feature-table.tsv
    log: logs/exportTSV_q2.log
    jobid: 0

biom convert -i ../results/qiime2/asv/dada2/table/feature-table.biom -o ../results/qiime2/asv/dada2/table/feature-table.tsv --to-tsv
[Fri Apr 23 17:24:51 2021]
Finished job 0.
1 of 1 steps (100%) done
