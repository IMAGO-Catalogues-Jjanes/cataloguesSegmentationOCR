"""
Script d'automatisation de la suppression des balises <b> et <i> des documents PageXML
Auteur: Juliette Janes
Date: 12/03/2021
"""

import os
from lxml import etree as ET

def nettoyage_automatique(chemin):
    """
    Fonction permettant, pour chaque fichier d'un dossier, de parser le document, le transformer en chaîne de
    caractères, supprimer les balises <b> et <i> et réinsèrer la chaîne obtenue dans le fichier.
    :param chemin: chaîne de caractère correspond au chemin relatif du dossier contenant les fichiers à transformer
    :return: str
    """

    for fichier in os.listdir(chemin):
        original = ET.parse(chemin + fichier)
        original_chaine = ET.tostring(original, encoding="unicode")
        nettoyage = original_chaine.replace('&lt;b&gt;', '').replace('&lt;/b&gt;', '').replace(
        '&lt;i&gt;', '').replace('&lt;/i&gt;', '')

        #on créé un nouveau fichier dans le dossier résultat
        with open(chemin+fichier, mode='w') as f:
            f.write(nettoyage)
        print(fichier, "traité")

# récupérer le dossier à transformer et le dossier résultat
chemin_input = input("entrez le chemin du dossier: ")
nettoyage_automatique(chemin_input)
