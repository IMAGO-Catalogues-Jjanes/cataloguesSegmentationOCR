
#creating training data using only the manuscripts catalogs dataset
#!/bin/bash
rm -r trainingDataManuscript; mkdir trainingDataManuscript
mkdir -p trainingDataManuscript
#getting images
cp 1_Data/Cat_manuscripts/data_segmenteur/images/*png trainingDataManuscript
cp 1_Data/Cat_manuscripts/data_segmenteur/images/*jpg trainingDataManuscript
#getting the ALTO4 files
cp 1_Data/Cat_manuscripts/data_segmenteur/alto_xml/*xml trainingDataManuscript

