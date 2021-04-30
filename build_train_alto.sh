#creating training data using all the dataset
#!/bin/bash
#Delete dir if it exists
rm -r trainingData; mkdir trainingData
#if [ -d trainingData ]; then rm -Rf trainingData; fi
mkdir -p trainingData
#getting images
cp 1_Data/*/*png trainingData
cp 1_Data/*/*jpg trainingData
cp 1_Data/*/*tif trainingData
#getting the ALTO4 files
cp 1_Data/*/*xml trainingData

#creating training data using only the annuaires dataset
#!/bin/bash
rm -r trainingDataAnnuaire; mkdir trainingDataAnnuaire
mkdir -p trainingDataAnnuaire
#getting images
cp 1_Data/Annuaires/*tif trainingDataAnnuaire
#getting the ALTO4 files
cp 1_Data/Annuaires/*xml trainingDataAnnuaire

#creating training data using only the exhibition catalogs dataset
#!/bin/bash
rm -r trainingDataExhibition; mkdir trainingDataExhibition
mkdir -p trainingDataExhibition
#getting images
cp 1_Data/Cat_exhibition/*png trainingDataExhibition
cp 1_Data/Cat_exhibition/*jpg trainingDataExhibition
#getting the ALTO4 files
cp 1_Data/Cat_exhibition/*xml trainingDataExhibition

#creating training data using only the manuscripts catalogs dataset
#!/bin/bash
rm -r trainingDataManuscript; mkdir trainingDataManuscript
mkdir -p trainingDataManuscript
#getting images
cp 1_Data/Cat_manuscripts/*png trainingDataManuscript
cp 1_Data/Cat_manuscripts/*jpg trainingDataManuscript
#getting the ALTO4 files
cp 1_Data/Cat_manuscripts/*xml trainingDataManuscript
