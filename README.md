# Model for OCR processing of Catalogs

This repository includes a model for ocerizing catalogs and the dataset used for its creation.

The aim of this work was to improve the ocerization and segmentation of the [Catalogs Workflow](https://github.com/carolinecorbieres/ArtlasCatalogues) done by Caroline Corbières, which allows to get a TEI file and a csv from exhibition catalogs.
The idea was not only to refine the OCR for [Artl@s](https://artlas.huma-num.fr/fr/) but also to make a useful tool for researchers who need to ocerize their catalogues. Therefore, the dataset used to train this model holds not only the dataset of the project, prepared by Caroline Corbières but also catalogs of 19th to nowadays manuscripts fairs of the [Katabase](https://github.com/katabase) project and datas from the [Adresses et Annuaires group](https://paris-timemachine.huma-num.fr/groupe-adresses-et-annuaires/) of Paris Time Machine of the EHESS, produced by Gabriela Elgarrista.

--Détails plus précis sur les données utilisées--

## Repository 
```
├── 1_Data
│     ├── annuaires
│     │  └── Data_segmenteur 
│     │     ├─ alto_xml
│     │     └─ images
│     │ 
│     ├── Cat_expositions
│     │  └── Data_segmenteur
│     │     ├─ alto_xml
│     │     └─ image
|     |
|     └── Cat_manuscrits
│        └── Data_segmenteur
│           ├─ alto_xml
│           └─ image
|
├── 2_Boite_a_outils
|     └──  Dépôt commun d'outils pour la préparation des données
|
├── Dataset_190421.csv 
├── model_segmenteur_test_220421.mlmodel 
└── rapport datasetTest_segmentation.pdf
```
                  

## Thanks to 
--Remerciements--
## Credits
This repository is developed by Juliette Janes, intern of the [Artl@s](https://artlas.huma-num.fr/fr/) project, with the help of Simon Gabay under the supervision of Béatrice Joyeux-Prunel.

## Licence
This repository is CC-BY.

![68747470733a2f2f692e6372656174697665636f6d6d6f6e732e6f72672f6c2f62792f322e302f38387833312e706e67](https://user-images.githubusercontent.com/56683417/115525743-a78d2400-a28f-11eb-8e45-4b6e3265a527.png)

## Cite this repository
Juliette Janes, Simon Gabay, Béatrice Joyeux-Prunel, _Model for OCR processing Catalogs_, 2020, https://github.com/Juliettejns/cataloguesPipeline/
