#creating training data using all the dataset
#!/bin/bash
#Delete dir if it exists
rm -r trainingData; mkdir trainingData
#if [ -d trainingData ]; then rm -Rf trainingData; fi
mkdir -p trainingData
#getting images
cp 1_Data/*/data_segmenteur/images/*png trainingData
cp 1_Data/*/data_segmenteur/images/*jpg trainingData
cp 1_Data/*/data_segmenteur/images/*tif trainingData
#getting the ALTO4 files
cp 1_Data/*/data_segmenteur/alto_xml/*xml trainingData

