# Annuaires Dataset

Here can be found all the annuaires pages dataset prepared and segmented.

The goal was to recreate a small dataset of 50 images which could represent the "Annuaire des propriétaires". Published in 1898, it lists, for all the adresses of the french capital, their owners. The dataset is constructed as each letter have at least all two pages representing themselves. 

- **images**: contains the ipages in their png or jpg format
- **page_Transkribus**: contains the PageXML export done from Transkribus in order to migrate to eScriptorium
- **page_transforme**: contains the PageXML obtained after its transformation by the script done [here](https://github.com/Heresta/BAO_Stage_DH_ENS_2021/tree/main/CorrectionPageXMLeScriptorium) in order for eScriptorium to display the manual corrections done on the transcriptions
- **alto_eScriptorium**: contains the ouput of eScriptorium in ALTO4 format.
