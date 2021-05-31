#import des librairies nécessaires
import os
import click
import re
from lxml import etree as ET
import errno

def transformation_automatique(chemin, dossier_resultat):
    # si le dossier résultat n'existe pas, on le créé, sinon, on ne fait rien
    if not os.path.exists(os.path.dirname(dossier_resultat)):
        try:
            os.makedirs(os.path.dirname(dossier_resultat))
        except OSError as exc:  # Guard against race condition
            if exc.errno != errno.EEXIST:
                raise

    for fichier in os.listdir(chemin):
        # pour chaque fichier du dossier, on applique la feuille de transformation de correction
        original = ET.parse(chemin+fichier)
        transformation_xlst = ET.XSLT(ET.parse("Ajout_default.xsl"))
        propre = transformation_xlst(original)
        #on créé un nouveau fichier dans le dossier résultat
        with open(dossier_resultat+fichier, mode='wb') as f:
            f.write(propre)

# récupérer le dossier à transformer et le dossier résultat
chemin_input = input("entrez le chemin du dossier: ")
chemin_output = input("entrez le chemin du dossier résultat: ")
transformation_automatique(chemin_input, chemin_output)
