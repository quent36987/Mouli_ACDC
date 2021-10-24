# sudo apt update
# apt install python3-pip
# pip install GitPython
# sudo apt install ocaml-nox

import git
import os
from pathlib import Path
from typing import Union
import sys
from subprocess import *
import shlex, subprocess


#   Configuration :
f = open('Config/confs.cf')
login = f.readlines()[0].rstrip('\n')
f.close()
FichierListSup = 'Config/list.cf'
DosMouli = 'Moulinette/'



#   Fonction :
def CloneTpSup(nb,dossier):
    f = open(FichierListSup,"r")
    lines = f.readlines()
    f.close()
    if os.path.exists(dossier):
        print('FICHIER DEJA PRESENT !')
    os.mkdir(dossier)
    for l in lines:
        mot = l.rstrip('\n')
        print('clone de : '+ login +'@git.cri.epita.fr:p/2026-s1-caml/tp'+ str(nb) +'-' + mot)
        try:
            git.Repo.clone_from(''+ login +'@git.cri.epita.fr:p/2026-s1-caml/tp'+ str(nb) +'-' + mot,dossier + '/' + mot)
        except KeyboardInterrupt :
            quit()
        except :
            print('oulala err sur : ' + mot)

#copie le fichiertest à la fin de  dossier/login/fichier avec tt les login de L3_login
def Add_line(dossier,fichier):
    f = open(FichierListSup,"r")
    lines = f.readlines()
    f.close()
    for l in lines:
        loginSup = l.rstrip('\n')
        fichierSup = dossier + '/' +  loginSup + '/' + fichier
        #ouverture du fichier ou se trouve les lignes a ajouter
        ftext = open(DosMouli + fichier,"r")
        linestext = ftext.readlines()
        ftext.close()
        if not os.path.exists(fichierSup):
            print('FICHIER INCONNUE : '+ fichierSup + ' !')
            continue
        fSup = open(fichierSup,'a')
        for lt in linestext:
            fSup.write(lt)
        fSup.close()
        #var = os.system("ocamlc -o " + dossier + '/' +  loginSup + "/exe_" + loginSup + " " + fichierSup)
        var = subprocess.run("ocamlc -o " + dossier + '/' +  loginSup + "/exe_"   + str(Path(fichier).with_suffix("")) + '_' + loginSup + " " + fichierSup, shell=True,stdout=None, stderr=None,capture_output=True)
        if (var.returncode == 0):
            print ('WARRNING SUR : '+ loginSup)
        if (var.returncode == 2):
            print ('ERR SUR : '+ loginSup)
        if (var.returncode == 1):
            print ('VALIDE : '+ loginSup)




# Execution du code :
if not os.path.exists('TP_Clone'):
    os.mkdir('TP_Clone')
dossier = 'TP_Clone/TP3_24_10'
#CloneTpSup(3,dossier)
fichier = 'list_tools.ml'
Add_line(dossier,fichier)

#fichier = 'fractals.ml'
#fichiter_text = 'text2'
#Add_line(dossier,fichier,fichiter_text)

