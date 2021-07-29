# Segmentation models

## Abondance

### Production

This model was produced using the first 30 pages of the dataset. It contains 10 pages of Annuaires, 10 pages of exhibition catalogs and 10 pages of manuscripts'fairs catalogs. The dataset was divided between train (90%) and val (10%) datasets. <br/>

### Results
This model has 62.80 % of accuracy according to the training part.

## Beaufort

### Production

This model was produced using the 100 pages of the dataset. It contains 33 pages of Annuaires, 33 pages of exhibition catalogs, 33 of manuscripts' fairs catalogs. It was divided between train (80%), val (10%) and test(10%) datasets.<br/>
Command used in Kraken : `ketos train -t train.txt -e val.txt -u NFKD -f alto`

### Results
This model has 69 % of accuracy.

## Chaource

### Production

This model was produced using the 277 pages of the dataset. It containsIt was divided between train (80%), val (10%) and test(10%) datasets.<br/>
Command used in Kraken : `ketos train -t train.txt -e val.txt -u NFKD -f alto`

### Results
mean_iu: 0.2092 freq_iu: 0.7157 mean_acc: 0.9613 accuracy: 0.9613
