#!/bin/bash

# On vérifie que le fichier richelieu.txt existe
# if [ ! -f richelieu.txt ]; then
#     echo "Le fichier richelieu.txt n'existe pas."
#     exit 1
# fi

# On récupère un mot de passe au hasard dans le fichier richelieu.txt
password=$(shuf -n 1 /home/user/richelieu.txt)
# password="banane"

# On attribue le mot de passe à l'utilisateur
echo "user:$password" | chpasswd

# On supprime le fichier richelieu.txt
rm /home/user/richelieu.txt