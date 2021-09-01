import sys
import random
import os

if __name__ == '__main__':
    test = input("""Choose the test you want for your dataset: 
                    "15" for a test dataset of 15 pages (5 of each documents types)
                    "30" for a test dataset of 30 pages (10 of each documents types)
                    "20" for a test dataset of 20 exhibition catalogs' pages
                    """)
    if test== 15:
        test_file = "./test_15.txt"
    elif test==30:
        test_file = "./test_30.txt"
    elif test==20:
        test_file="./test_20_catExpo.txt"
    else:
        print("no test file selected, rerun the programm.")
        
    train = open("train.txt", "w")
    val = open("val.txt", "w")
    random.seed('1214')

   with open(test_file) as f:
       files = (os.path.basename(filepath) for file in f.readlines())

    for i in sys.argv[1:]:
        with open('test.txt') as f:
            if os.path.basename(1) in files:
                pass
            else:
                i = os.path.abspath(i)
                monRand = random.random()
                if monRand <= 0.1:
                    val.write(i+"\n")
                else:
                    train.write(i+"\n")

    val.close()
    train.close()
    print("Dataset created")
