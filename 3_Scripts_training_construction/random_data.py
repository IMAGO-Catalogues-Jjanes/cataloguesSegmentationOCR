import sys
import random

if __name__ == '__main__':

    train = open("train.txt", "w")
    test = open("test.txt", "w")
    random.seed('1214')

    for i in sys.argv[1:]:
        monRand = random.random()
        if monRand <= 0.1:
            test.write(i+"\n")
        else:
            train.write(i+"\n")

    train.close()
    test.close()
