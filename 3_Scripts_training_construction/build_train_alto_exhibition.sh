#creating training data using only the exhibition catalogs dataset
#!/bin/bash
rm -r trainingDataExhibition; mkdir trainingDataExhibition
mkdir -p trainingDataExhibition
#getting images
cp ../1_Data/Cat_exhibition/*/images/*.png trainingData
cp ../1_Data/Cat_exhibition/*/images/*.jpg trainingData
#getting the ALTO4 files
cp ../1_Data/Cat_exhibition/alto_eScriptorium/*xml trainingDataExhibition
cp ../1_Data/Cat_exhibition/*/alto_eScriptorium/*xml trainingData
