#creating training data using only the exhibition catalogs dataset
#!/bin/bash
rm -r trainingData; mkdir trainingData
mkdir -p trainingData
#getting images
cp ../1_Data/Cat_exhibition/*/images/*.jpg trainingData
#getting the ALTO4 files
cp ../1_Data/Cat_exhibition/first_data/alto_eScriptorium/*xml trainingData
