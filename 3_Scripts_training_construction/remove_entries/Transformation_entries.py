from lxml import etree as ET
import errno
import os


"""
This program remove the entries zones from ALTO XML files of the all corpus

Author: Juliette Janes
Date: 21/06/21
"""

chemin = input("Path of the directory where the files are:")


for fichier in os.listdir(chemin):
    original = ET.parse(chemin + fichier)
    transformation_xlst = ET.XSLT(ET.parse("Transformation_entries.xsl"))
    propre = transformation_xlst(original)
    with open(chemin + fichier, mode='wb') as f:
        f.write(propre)
    print(fichier, " transformed")