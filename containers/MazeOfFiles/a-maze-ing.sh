#!/bin/bash

# Script destiné à créer une arborescence de répertoires récursive, puis à dissimuler un mot de passe au hasard à
# l'intérieur de l'arborescence.


profondeur=5
largeurrepertoire=5
compteur=0

echo 'timey:password' | chpasswd

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
    motdepasse="P0yOPOy0"
    # Hide the password in a random directory at the end of the maze
    for i in $(seq 1 $largeurrepertoire); do
        #select a random number between 1 and largeurrepertoire
        x=$(($RANDOM % $largeurrepertoire + 1))
        cd $x
    done
    echo $motdepasse > password.txt
}

creerRepertoires $profondeur
hidePassword