# Snakemake workflow: Kelly_AdultCDI_2020_16rRNA

[![Snakemake](https://img.shields.io/badge/snakemake-≥5.7.0-brightgreen.svg)](https://snakemake.bitbucket.io)
[![Build Status](https://travis-ci.org/snakemake-workflows/Kelly_AdultCDI_2020_16rRNA.svg?branch=master)](https://travis-ci.org/snakemake-workflows/Kelly_AdultCDI_2020_16rRNA)

This is using the standard Snakemake workflow template. Replace this text with a comprehensive description covering the purpose and domain.
Insert your code into the respective folders, i.e. `scripts`, `rules`, and `envs`. Define the entry point of the workflow in the `Snakefile` and the main configuration in the `config.yaml` file.

The data is 16s (V1-V2) rRNA-seq from Kelly Brendan's lab, published on RSA with bioproject ID: PRJNA682076
Explore both ASV and OTU.

## Authors

* chaodi (@dic)

## Usage
Running on new respublica by:
snakemake --latency-wait 10 -j 10 -p -c "sbatch --job-name={params.jobName} --mem={params.mem} -c {threads} --time=360 -e sbatch/{params.jobName}.e -o sbatch/{params.jobName}.o"

## Workflow
![alt text](https://github.research.chop.edu/dic/tag_seq/blob/master/workflow/DAG.png?raw=true)
