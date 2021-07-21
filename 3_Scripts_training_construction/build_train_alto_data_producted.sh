#creating training data using all the dataset
#!/bin/bash
#Delete dir if it exists
rm -r trainingData; mkdir trainingData
#if [ -d trainingData ]; then rm -Rf trainingData; fi
mkdir -p trainingData
#getting images
cp ../1_Data/*/images/*png trainingData
cp ../1_Data/*/images/*jpg trainingData
cp ../1_Data/*/images/*tif trainingData
#getting the ALTO4 files
cp ../1_Data/*/alto_eScriptorium/*xml trainingData
#getting images and ALTO4 files for the catalogs producted
cp ../1_Data/Cat_exhibition/complete_Catalogs/*/alto_eScriptorium/*xml trainingData
cp ../1_Data/Cat_exhibition/complete_Catalogs/*/images/*jpg trainingData
