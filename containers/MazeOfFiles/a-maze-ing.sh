#!/bin/bash

# Script destiné à créer une arborescence de répertoires récursive, puis à dissimuler un mot de passe au hasard à
# l'intérieur de l'arborescence.


profondeur=2
largeurrepertoire=2
compteur=0

# Création de la structure de répertoires
function creerRepertoires {
    

    if [ $1 -gt 0 ]; then
        for i in $(seq 1 $largeurrepertoire); do
            compteur=$(($compteur + 1))
            echo "Valeur du compteur : $compteur"
            echo "Création du répertoire $i"
            mkdir $i
            cd $i
            creerRepertoires $(($1 - 1))
            cd ..
        done
    fi
}

function hidePassword {
    echo "Cacher le mot de passe"
    motdepasse=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
    echo "Mot de passe généré : $motdepasse"
    echo $motdepasse > $((1 + RANDOM % $profondeur))/password.txt
}

creerRepertoires $profondeur
hidePassword

