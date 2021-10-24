# sudo apt update
# apt install python3-pip
# pip install GitPython
# sudo apt install ocaml-nox

import git
import os
import sys
from subprocess import *
import shlex, subprocess


f = open('Config/config_login')
login = f.readlines()[0].rstrip('\n')
f.close()
exit

def CloneTpSup(nb,dossier):
    f = open('Config/L3_'+ login,"r")
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
            exit
        except :
            print('oulala err sur : ' + mot)


#copie le fichiertest à la fin de  dossier/login/fichier avec tt les login de L3_login
def Add_line(dossier,fichier,fichiertext):
    f = open('Config/L3_'+ login,"r")
    lines = f.readlines()
    f.close()
    for l in lines:
        loginSup = l.rstrip('\n')
        fichierSup = dossier + '/' +  loginSup + '/' + fichier
        #ouverture du fichier ou se trouve les lignes a ajouter
        ftext = open(fichiertext,"r")
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
        var = subprocess.run("ocamlc -o " + dossier + '/' +  loginSup + "/exe_" + loginSup + " " + fichierSup, shell=True,stdout=None, stderr=None,capture_output=True)
        if (var.returncode == 0):
            print ('WARRNING SUR : '+ loginSup)
        if (var.returncode == 2):
            print ('ERR SUR : '+ loginSup)



if not os.path.exists('TP_Clone'):
    os.mkdir('TP_Clone')





dossier = 'TP_Clone/TP3_24_10'
CloneTpSup(3,dossier)
fichier = 'list_tools.ml'
fichiter_text = 'text1'
Add_line(dossier,fichier,fichiter_text)

#fichier = 'fractals.ml'
#fichiter_text = 'text2'
#Add_line(dossier,fichier,fichiter_text)

