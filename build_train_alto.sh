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

#creating training data using only the annuaires dataset
#!/bin/bash
rm -r trainingDataAnnuaire; mkdir trainingDataAnnuaire
mkdir -p trainingDataAnnuaire
#getting images
cp 1_Data/Annuaires/data_segmenteur/images/*tif trainingDataAnnuaire
#getting the ALTO4 files
cp 1_Data/Annuaires/data_segmenteur/alto_xml/*xml trainingDataAnnuaire

#creating training data using only the exhibition catalogs dataset
#!/bin/bash
rm -r trainingDataExhibition; mkdir trainingDataExhibition
mkdir -p trainingDataExhibition
#getting images
cp 1_Data/Cat_exhibition/data_segmenteur/images/*png trainingDataExhibition
cp 1_Data/Cat_exhibition/data_segmenteur/images/*jpg trainingDataExhibition
#getting the ALTO4 files
cp 1_Data/Cat_exhibition/data_segmenteur/alto_xml/*xml trainingDataExhibition

#creating training data using only the manuscripts catalogs dataset
#!/bin/bash
rm -r trainingDataManuscript; mkdir trainingDataManuscript
mkdir -p trainingDataManuscript
#getting images
cp 1_Data/Cat_manuscripts/data_segmenteur/images/*png trainingDataManuscript
cp 1_Data/Cat_manuscripts/data_segmenteur/images/*jpg trainingDataManuscript
#getting the ALTO4 files
cp 1_Data/Cat_manuscripts/data_segmenteur/alto_xml/*xml trainingDataManuscript
