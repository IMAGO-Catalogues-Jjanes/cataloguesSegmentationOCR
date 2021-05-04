# Annuaires Dataset

Here can be found all the annuaires pages dataset prepared and segmented.

## Description of the dataset
The goal was to recreate a small dataset of 50 images which could represent the "Annuaire des propriétaires". Published in 1898, it lists, for all the adresses of the french capital, their owners. The dataset is constructed as each letter have at least all two pages representing themselves. Each page is composed of two columns of text and a pagination on the top of it.

## Directory
- **images**: contains the images
- **page_Transkribus**: contains the PageXML export done from Transkribus in order to migrate to eScriptorium
- **alto_eScriptorium**: contains the ouput of eScriptorium in ALTO4 format.

## Images properties
- Format of the images: tif
- Dimensions: 8009 * 11737 px
- DPI: 700
- RGB
