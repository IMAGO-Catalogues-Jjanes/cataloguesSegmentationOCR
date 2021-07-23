# Exhibition Catalogs Dataset

Here can be found all the exhibition catalogs prepared and segmented.

## Description of the dataset
The goal was to recreate a small dataset of 127 images which could represent the diversity of catalogs processed by Basart. Therefore, the catalogs presented here go from the beginning of the 19th century to the end of the 20th century, and are from various part of the world. The dataset is also constructed in order to show the variety of typology such as having one or two columns per pages, pagination on the top or the bottom of the page and running titles.

<p class="float">
<img src="/images/Catexp_time.png" height="350"/>
<img src="/images/Catexp_prov.png" height="350"/>
</p>

Along with these small dataset are the catalogs produced using the segmentation and HTR models created, in order to use these new data to train more efficient models. Right now there are three catalogs available, the Catalogue de l'exposition des Refusés of 1863, the 1893's Catalogue de la Rose Croix and the Catalogue du Salon des Indépendants of 1935 and 30 pages from various catalogs from Rouen. It makes a total of 341 new pages.

## Directory
Since it is mostly extracts from very different catalogs, all the different formats of the images are contained in the same directory.

- **images**: contains the images.
- **page_Transkribus**: contains the PageXML export done from Transkribus in order to migrate to eScriptorium
- **page_transforme**: contains the PageXML obtained after its transformation by the script done [here](https://github.com/Heresta/BAO_Stage_DH_ENS_2021/tree/main/CorrectionPageXMLeScriptorium) in order for eScriptorium to display the manual corrections done on the transcriptions
- **alto_eScriptorium**: contains the Alto4 obtained from eScriptorium
- **complete_catalogs**: contains the catalogs which were producted during the application of the models created, in order to train new models with it.

## Images properties
- format: jpg
- dimensions: variable, in a range of 1700 * 2300 to 2500* 3300 px
- DPI: 300
- RGB
