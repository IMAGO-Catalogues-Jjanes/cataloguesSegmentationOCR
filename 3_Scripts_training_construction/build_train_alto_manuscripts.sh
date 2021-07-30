#creating training data using only the manuscripts catalogs dataset
#!/bin/bash
rm -r trainingData; mkdir trainingData
mkdir -p trainingData
#getting images
cp ../1_Data/Cat_manuscripts/images/*png trainingData
cp ../1_Data/Cat_manuscripts/images/*jpg trainingData
#getting the ALTO4 files
cp ../1_Data/Cat_manuscripts/alto_eScriptorium/*xml trainingData
