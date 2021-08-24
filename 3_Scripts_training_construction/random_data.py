import sys
import random
import os

if __name__ == '__main__':
    test = input("""Choose the test you want for your dataset: 
                    test_15.txt for a test dataset of 15 pages (5 of each documents types)
                    test_30.txt for a test dataset of 30 pages (10 of each documents types)
                    test_20_CatExpo.txt for a test dataset of 20 exhibition catalogs' pages
                    """)
    train = open("train.txt", "w")
    val = open("val.txt", "w")
    random.seed('1214')

    for i in os.listdir("./trainingData/"):
        if "xml" in i:
            with open(test) as f:
                if i in f.read():
                    pass
                else:
                    monRand = random.random()
                    if monRand <= 0.1:
                        val.write("./trainingData/"+i+"\n")
                    else:
                        train.write("./trainingData/"+i+"\n")

    train.close()
    val.close()
    print("Dataset created")
