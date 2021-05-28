#creating training data using only the exhibition catalogs dataset
#!/bin/bash
rm -r trainingDataExhibitionEntry; mkdir trainingDataExhibitionEntry
mkdir -p trainingDataExhibitionEntry
#getting images
cp ../1_Data/Cat_exhibition/images/*png trainingDataExhibitionEntry
cp ../1_Data/Cat_exhibition/images/*jpg trainingDataExhibitionEntry
#getting the ALTO4 files
cp ../1_Data/Cat_exhibition/alto_eScriptorium_Entry/*xml trainingDataExhibitionEntry
