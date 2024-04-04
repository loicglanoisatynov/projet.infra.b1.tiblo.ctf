#!/bin/bash

# Script destiné à créer une arborescence de répertoires récursive


profondeur=5
largeurrepertoire=5
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

creerRepertoires $profondeur

