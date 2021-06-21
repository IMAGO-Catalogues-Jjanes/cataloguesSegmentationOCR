# Training Dataset Construction

These bash scripts allow to create a training dataset of the dataset presented, using terminal commands. 


- build_train_alto : build a dataset using all the differents datas contained in the repository (annuaires, exhibition catalogs and manuscripts' fair catalogs)
- build_train_alto_annuaire: build a dataset containing the annuaires xml and images
- build_train_alto_exhibition: build a dataset containing the exhibition catalogs xml and images
- build_train_alto_manuscripts: build a dataset containing the manuscrits catalogs

The `test.txt` files contains differents types of test dataset already created. If you want to use them, run the python script `random_data.py` using the `python3 random_data.py ./trainingData/*.xml` command which split the dataset in training, evaluation and testing datasets, the testing dataset being the one in test.txt. 

 - ```test_15.txt```: contains the 15 pages used to test the dataset on models created on the 150 and 274 pages datasets. (5 of annuaires, 5 of manuscripts' fairs catalogs and 5 of exhibition catalogs)
 - ```test_30.txt```: contains 30 pages of test dataset (10 of annuaires, 10 of manuscripts' fairs catalogs and 10 of exhibition catalogs)
 - ```test_20_catExpo.txt```: contains 20 pages of test dataset. Only exhibition catalogs catalogs were selected here, since they are the core of our work.
