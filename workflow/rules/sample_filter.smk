rule sample_filter:
    input:
        table = "../results/qiime2/asv/dada2/" + proj_name + "-asv-table.qza",
        seq = "../results/qiime2/asv/dada2/" + proj_name + "-rep-seqs.qza",
        metadata = "sample_50cdiff_metadata.tsv"
    output:
        table_cdi_pos = "../results/qiime2/asv/dada2/" + proj_name + "-asv-table_cdi_pos.qza",
        table_cdi_pos_viz = "../results/qiime2/asv/dada2/" + proj_name + "-asv-table_cdi_pos.qzv",
        seq_cdi_pos = "../results/qiime2/asv/dada2/" + proj_name + "-rep-seqs_cdi_pos.qza",
        seq_cdi_pos_viz = "../results/qiime2/asv/dada2/" + proj_name + "-rep-seqs_cdi_pos.qzv"
    log:
        "logs/sample_filter.log"
    params:
        mem = '20G',
        jobName = "sample_filter"
    shell:
        '''
        conda activate qiime2-2019.7

        qiime feature-table filter-samples \
            --i-table {input.table} \
            --m-metadata-file {input.metadata} \
            --o-filtered-table {output.table_cdi_pos} &> {log}

        qiime feature-table summarize \
            --i-table {output.table_cdi_pos} \
            --o-visualization {output.table_cdi_pos_viz} \
            --m-sample-metadata-file {input.metadata} --verbose &>> {log}   

        qiime feature-table filter-seqs \
            --i-data {input.seq} \
            --i-table {output.table_cdi_pos} \
            --o-filtered-data {output.seq_cdi_pos} &>> {log} 

        qiime feature-table tabulate-seqs \
            --i-data {output.seq_cdi_pos} \
            --o-visualization {output.seq_cdi_pos_viz} --verbose &>> {log}
         conda deactivate
        '''    