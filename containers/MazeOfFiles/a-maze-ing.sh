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
            mkdir $i
            cd $i
            creerRepertoires $(($1 - 1))
            cd ..
        done
    fi
}

function hidePassword {
    motdepasse="password1234"
    echo $motdepasse > $((1 + RANDOM % $profondeur))/password.txt
}

creerRepertoires $profondeur
hidePassword