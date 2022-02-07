# Note
# Taxonomic classifiers perform best when they are trained based on your specific sample preparation 
# and sequencing parameters, including the primers that were used for amplification and the length of 
# your sequence reads. Therefore in general you should follow the instructions in Training feature 
# classifiers with q2-feature-classifier to train your own taxonomic classifiers (for example, from the
# marker gene reference databases below).
# https://docs.qiime2.org/2021.2/tutorials/feature-classifier/
rule assign_tax:
  input:
    seq_cdi_pos = "../results/qiime2/asv/dada2/" + proj_name + "-rep-seqs_cdi_pos.qza",
    classifier = "../resources/gg-13-8-99-nb-classifier.qza"
  output:
    taxonomy = "../results/qiime2/asv/taxonomy/" + proj_name + "-taxonomy.qza"
  log:
    "logs/assign_tax.log"
  params:
    mem = '10G',
    jobName = "assign_tax"  
  shell:
    '''
      conda activate qiime2-2019.7
      qiime feature-classifier classify-sklearn \
        --i-classifier {input.classifier} \
        --i-reads {input.seq_cdi_pos} \
        --o-classification {output.taxonomy} &> {log}

      conda deactivate    
    '''

rule gen_tax:
  input:
    taxonomy = "../results/qiime2/asv/taxonomy/" + proj_name + "-taxonomy.qza",
    feature_table = "../results/qiime2/asv/dada2/" + proj_name + "-asv-table_cdi_pos.qza",
    metadata = "sample_50cdiff_metadata.tsv"
  output:
    taxonomy_viz = "../results/qiime2/asv/taxonomy/" + proj_name + "-taxonomy.qzv",
    taxa_barplot_viz = "../results/qiime2/asv/taxonomy/" + proj_name + "-taxa_barplot.qzv"
  log:
    "logs/export_taxonomy.log"
  params:
    mem = '10G',
    jobName = "export_taxonomy",
    outdir = "../results/qiime2/asv/taxonomy/" + proj_name
  shell:
    '''
    qiime metadata tabulate \
      --m-input-file {input.taxonomy} \
      --o-visualization {output.taxonomy_viz} &> {log}

    qiime tools export \
      --input-path {input.taxonomy} \
      --output-path {params.outdir} &>> {log}

    qiime taxa barplot \
      --i-table {input.feature_table} \
      --i-taxonomy {input.taxonomy} \
      --m-metadata-file {input.metadata} \
      --o-visualization {output.taxa_barplot_viz} &>> {log}  
    '''

# get relative abundances of taxonomy in each sample (later)
# qiime taxa collapse \
#   --i-table feature-table.qza \
#   --i-taxonomy taxonomy.qza \
#   --p-level 2 \
#   --o-collapsed-table phyla-table.qza 

#   qiime feature-table relative-frequency \
#     --i-table phyla-table.qza \
#     --o-realtive-frequency-table rel-phyla-table.qza

# qiime tools export rel-phyla-table.qza \
#   --output-dir rel-table

# biom convert -i feature-table.biom -o rel-phyla-table.tsv --to-tsv