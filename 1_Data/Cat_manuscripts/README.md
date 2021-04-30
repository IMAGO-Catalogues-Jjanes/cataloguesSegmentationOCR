# Manuscripts Catalogs Dataset

Here can be found all the manuscripts' fair catalogs prepared and segmented.

The goal was to recreate a small dataset of 50 images which could represent the diversity of catalogs. Therefore, the catalogs presented here go from mid-19th century to nowadays, and are from various part of the world. The dataset is also constructed in order to show the variety of typology such as having one or two columns per pages, pagination on the top or the bottom of the page and running titles.

Since it is mostly extract from very different catalogs, all the different formats of the images are contained in the same directory.

- **images**: contains the ipages in their png or jpg format
- **page_Transkribus**: contains the PageXML export done from Transkribus in order to migrate to eScriptorium
- **page_transforme**: contains the PageXML obtained after its transformation by the script done [here](https://github.com/Heresta/BAO_Stage_DH_ENS_2021/tree/main/CorrectionPageXMLeScriptorium) in order for eScriptorium to display the manual corrections done on the transcriptions
- **alto_eScriptorium**: contains the ouput of eScriptorium in ALTO4 format.
