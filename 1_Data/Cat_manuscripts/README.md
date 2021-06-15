# Manuscripts Catalogs Dataset

Here can be found all the manuscripts' fair catalogs prepared and segmented.

## Description of the dataset

The goal was to recreate a small dataset of 97 images which could represent the diversity of catalogs. Therefore, the catalogs presented here go from mid-19th century to nowadays, and are from various part of the world. The dataset is also constructed in order to show the variety of typology such as having one or two columns per pages, pagination on the top or the bottom of the page and running titles.
<p class="float" align="center">
  <img src="/images/Catman_time.png" height="350"/>
  <img src="/images/Catman_prov.png" height="350"/>
  </p>
  
## Directory
Since it is mostly extract from very different catalogs, all the different formats of the images are contained in the same directory.

- **images**: contains the images
- **page_Transkribus**: contains the PageXML export done from Transkribus in order to migrate to eScriptorium
- **page_transforme**: contains the PageXML obtained after its transformation by the script done [here](https://github.com/Heresta/BAO_Stage_DH_ENS_2021/tree/main/CorrectionPageXMLeScriptorium) in order for eScriptorium to display the manual corrections done on the transcriptions
- **alto_eScriptorium_Simple**: contains the Dataset without Entry, output of eScriptorium, in ALTO4
- **alto_eScriptorium_Entry**: contains the Dataset with Entry, output of eScriptorium in ALTO4

## Images properties
- format: jpg or png
- dimensions: variable, from 2000 * 3000 to 5000 * 9000 px
- DPI: 300 or 400 
- RGB
