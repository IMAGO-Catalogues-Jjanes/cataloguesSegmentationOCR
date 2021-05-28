#creating training data using all the dataset
#!/bin/bash
#Delete dir if it exists
rm -r trainingDataEntry; mkdir trainingDataEntry
#if [ -d trainingData ]; then rm -Rf trainingData; fi
mkdir -p trainingDataEntry
#getting images
cp ../1_Data/*/images/*png trainingDataEntry
cp ../1_Data/*/images/*jpg trainingDataEntry
cp ../1_Data/*/images/*tif trainingDataEntry
#getting the ALTO4 files
cp ../1_Data/*/alto_eScriptorium_Entry/*xml trainingDataEntry
