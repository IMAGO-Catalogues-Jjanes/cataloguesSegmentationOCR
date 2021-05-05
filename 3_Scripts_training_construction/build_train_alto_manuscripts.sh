
#creating training data using only the manuscripts catalogs dataset
#!/bin/bash
rm -r trainingDataManuscript; mkdir trainingDataManuscript
mkdir -p trainingDataManuscript
#getting images
cp ../1_Data/Cat_manuscripts/images/*png trainingDataManuscript
cp ../1_Data/Cat_manuscripts/images/*jpg trainingDataManuscript
#getting the ALTO4 files
cp ../1_Data/Cat_manuscripts/alto_eScriptorium/*xml trainingDataManuscript

