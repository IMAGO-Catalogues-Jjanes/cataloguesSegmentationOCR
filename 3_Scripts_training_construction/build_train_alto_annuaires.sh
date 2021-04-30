
#creating training data using only the annuaires dataset
#!/bin/bash
rm -r trainingDataAnnuaire; mkdir trainingDataAnnuaire
mkdir -p trainingDataAnnuaire
#getting images
cp 1_Data/Annuaires/data_segmenteur/images/*tif trainingDataAnnuaire
#getting the ALTO4 files
cp 1_Data/Annuaires/data_segmenteur/alto_xml/*xml trainingDataAnnuaire

