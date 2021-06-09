# Training Dataset Construction

These bash scripts allow to create a training dataset of the dataset presented, using terminal commands. 


- build_train_alto : build a dataset using all the differents datas contained in the repository (annuaires, exhibition catalogs and manuscripts' fair catalogs)
- build_train_alto_annuaire: build a dataset containing the annuaires xml and images
- build_train_alto_exhibition: build a dataset containing the exhibition catalogs xml and images
- build_train_alto_manuscripts: build a dataset containing the manuscrits catalogs

The `test.txt` file contains a list of the pages used to test our dataset, which were randomly selected in order to have the same number of pages for the Annuaires, Exhibition catalogs and Manuscripts' fairs catalogs. If you want to use the same test dataset, run the python script `random_data.py` using the `python3 random_data.py ./trainingData/*.xml` command which split the dataset in training, evaluation and testing datasets, the testing dataset being the one in test.txt. 
