# HTR models

This directory contains all the HTR models produced using the data available in this repository. 

## Abondance

### Production

This model was produced using the first 30 pages of the dataset. It contains 10 pages of Annuaires, 10 pages of exhibition catalogs and 10 pages of manuscripts'fairs catalogs. The dataset was divided between train (90%) and val (10%) datasets. <br/>
Commands used:</br>
`ketos train -t train.txt -e val.txt -u NKD -f alto` for training<br/>
`ketos test -m model_best.mlmodel -e val.txt -f alto` for testing

### Results
This model has 95.20 % of accuracy according to the training part.

## Beaufort

### Production

This model was produced using the first 30 pages of the dataset. The same train and val datasets were used for the training of the Abondance model and the Beaufort Model. However, the Beaufort Model included during its training a repolygonisation of the data.<br/>
Commands used:</br>
`ketos train -t train.txt -e val.txt -u NKD -f alto` for training<br/>
`ketos test -m model_best.mlmodel -e val.txt -f alto` for testing

### Results
This model has 72.50 % of accuracy according to the training part. Therefore, the following models were trained without repolygonisation.

## Chaource

### Production

This model was produced using 100 pages of the dataset. It was divided between train (80%), val (10%) and test(10%) datasets.<br/>
Commands used:</br>
`ketos train -t train.txt -e val.txt -u NKD -f alto` for training<br/>
`ketos test -m model_best.mlmodel -e val.txt -f alto` for testing

### Results
This model has 95.95 % of accuracy according to its own test dataset and 97.19 % when applied on the 3 pages test dataset of the Beaufort and Abondance Models.

## Danablu

### Production

This model was produced using the first 30 pages of the dataset after an update of kraken.<br/>
Commands used:</br>
`ketos train -t train.txt -e val.txt -u NKD -f alto` for training<br/>
`ketos test -m model_best.mlmodel -e val.txt -f alto` for testing

### Results
This model has 95.78 % of accuracy applied on the same 3 pages test dataset of the Beaufort and Abondance Models.

## Edam
### Production

This model was produced using the first 30 pages of the dataset. Their lines have been redone using the default eScriptorium segmentation model (blla) in order to have an eScriptorium native dataset. The training has been divided in the same way as the Abondance and Beaufort datasets.<br/>
Commands used:</br>
`ketos train -t train.txt -e val.txt -u NKD -f alto` for training<br/>
`ketos test -m model_best.mlmodel -e val.txt -f alto` for testing

### Results
This model has 93.81 % of accuracy according to the training part.

## Fourme

### Production

This model was produced using a dataset of [375 pages](https://github.com/Juliettejns/cataloguesSegmentationOCR/releases/tag/NewCatalogs2) (all the original prepared data and the pages from the complete catalogs _Salon des Refusés, 1863_ and _Salon de la Rose Croix, 1893_.) This dataset has been divided in train (80%), val (10%) and test (10%) datasets where the [test](https://github.com/Juliettejns/cataloguesSegmentationOCR/blob/main/3_Scripts_training_construction/test_30.txt) dataset is fixed and can be found in the `3_script_training_construction`.<br/>
Commands used:</br>
`ketos train -t train.txt -e val.txt -u NKD -f alto` for training<br/>
`ketos test -m model_best.mlmodel -e val.txt -f alto` for testing
### Results
This model has 96,46 % of accuracy according to its training part.

## Gruyere

### Production

This model was produced using a dataset of [545 pages](https://github.com/Juliettejns/cataloguesSegmentationOCR/releases/tag/CatIndep) (all the original prepared data and the pages from the complete catalogs _Salon des Réfusés, 1863_, _Salon de la Rose Croix, 1893_, _Catalogues de Rouen_ and the first 130 pages of the _Catalogue des Indépendants, 1935_). This dataset has been divided in train (80%), val (10%) and test (10%) datasets where the [test](https://github.com/Juliettejns/cataloguesSegmentationOCR/blob/main/3_Scripts_training_construction/test_30.txt) dataset is fixed and can be found in the `3_script_training_construction`.
<br/>
Commands used:</br>
`ketos train -t train.txt -e val.txt -u NKD -f alto` for training<br/>
`ketos test -m model_best.mlmodel -e val.txt -f alto` for testing

### Results
This model has 91,98 % of accuracy.
