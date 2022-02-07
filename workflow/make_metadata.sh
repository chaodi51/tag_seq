
cat Kelly_AdultCDI_2020_metadata.csv |cut -d "," -f1,12,30,34 | sed 's/,/\t/g'> sample_metadata.tsv
