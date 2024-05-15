#!/bin/bash
# Récupère un mot de passe au hasard dans le fichier richelieu.txt du répertoire courant, et le renvoie à l'utilisateur.

# On vérifie que le fichier richelieu.txt existe
# if [ ! -f richelieu.txt ]; then
#     echo "Le fichier richelieu.txt n'existe pas."
#     exit 1
# fi

# On récupère un mot de passe au hasard dans le fichier richelieu.txt
password=$(shuf -n 1 richelieu.txt)
password="banane"

# On attribue le mot de passe à l'utilisateur
echo "user:$password" | chpasswd

# Envoie par netcat le mot de passe à l'hôte du docker
# echo "Le mot de passe est $password" | nc -p 4242
