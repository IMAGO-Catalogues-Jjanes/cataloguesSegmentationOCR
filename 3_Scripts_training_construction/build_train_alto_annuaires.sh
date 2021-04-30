
#creating training data using only the annuaires dataset
#!/bin/bash
rm -r trainingDataAnnuaire; mkdir trainingDataAnnuaire
mkdir -p trainingDataAnnuaire
#getting images
cp ../1_Data/Annuaires/images/*tif trainingDataAnnuaire
#getting the ALTO4 files
cp ../1_Data/Annuaires/alto_xml/*xml trainingDataAnnuaire

