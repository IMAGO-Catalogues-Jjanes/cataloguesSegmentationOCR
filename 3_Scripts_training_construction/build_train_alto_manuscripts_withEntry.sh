#creating training data using only the manuscripts catalogs dataset
#!/bin/bash
rm -r trainingDataManuscriptEntry; mkdir trainingDataManuscriptEntry
mkdir -p trainingDataManuscriptEntry
#getting images
cp ../1_Data/Cat_manuscripts/images/*png trainingDataManuscriptEntry
cp ../1_Data/Cat_manuscripts/images/*jpg trainingDataManuscriptEntry
#getting the ALTO4 files
cp ../1_Data/Cat_manuscripts/alto_eScriptorium_Entry/*xml trainingDataManuscriptEntry
