# Dockerfile pour le conteneur crackSSH. Le rôle du Dockerfile est de créer une image Docker à partir de laquelle 
# on peut lancer un conteneur. Cette image contient un serveur SSH vulnérable à des attaques par force brute.
# Le joueur récupère ensuite le flag dans le répertoire courant du conteneur.
FROM alpine:latest

RUN apk update && apk add --no-cache \
    openssh \
    && rm -rf /var/lib/apt/lists/*

# 82 146 99 229
RUN ssh-keygen -A

# Dans le fichier /etc/ssh/sshd_config, paramétrer le port ouvert sur le 22, et PermitRootLogin sur "no"
RUN sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config


# Exécutez le serveur SSH lorsque le conteneur démarre
CMD ["/usr/sbin/sshd", "-D"]