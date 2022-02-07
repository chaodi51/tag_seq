rule rm_primers:
    input:
        q2_import = "../results/qiime2/" + proj_name + "-PE-demux.qza"
    output:
        q2_primerRM = "../results/qiime2/" + proj_name + "-PE-demux-noprimer.qza"
    log:
        "logs/qiime2_rm_primers.log"
    params:
        mem = '20G',
        jobName = "qiime2_rm_primer" 
    threads: 8
    conda:
        "../envs/qiime2.yaml"
    shell:
        '''
        qiime cutadapt trim-paired \
        --p-cores {threads} \
        --i-demultiplexed-sequences {input.q2_import} \
        --p-front-f {config[primerF]} \
        --p-front-r {config[primerR]} \
        --p-error-rate {config[primer_err]} \
        --p-overlap {config[primer_overlap]} \
        --o-trimmed-sequences {output.q2_primerRM} &> {log}
        '''
