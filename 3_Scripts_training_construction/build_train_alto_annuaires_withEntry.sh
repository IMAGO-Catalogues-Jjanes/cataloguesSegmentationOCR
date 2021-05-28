#creating training data using only the annuaires dataset
#!/bin/bash
rm -r trainingDataAnnuaireEntry; mkdir trainingDataAnnuaireEntry
mkdir -p trainingDataAnnuaireEntry
#getting images
cp ../1_Data/Annuaires/images/*tif trainingDataAnnuaireEntry
#getting the ALTO4 files
cp ../1_Data/Annuaires/alto_eScriptorium_Entry/*xml trainingDataAnnuaireEntry
