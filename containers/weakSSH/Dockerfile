# Instructions utilisateur : 
    # Pour build l'image (depuis /9.ProjetInfrastructure&SI/CTF/containers/weakSSH$) : docker build -t weakssh .
    # Pour lancer le conteneur : docker run -d -p 2222:22 weakssh
    # Pour accéder au conteneur depuis l'utilitaire Docker : 
    # docker exec -it <container_id_récupéré par docker_ps> sh
    # Pour accéder au conteneur depuis un terminal : ssh <user>@<server> -p 22
    # Pour réinitialiser le certificat : ssh-keygen -R "[localhost]:2222"
    # Attaque par force brute : sudo hydra -l user -P ./richelieu.txt ssh://localhost:2222 -vvv -I

# Dockerfile pour le conteneur crackSSH. Le rôle du Dockerfile est de créer une image Docker à partir de laquelle 
# on peut lancer un conteneur. Cette image contient un serveur SSH vulnérable à des attaques par force brute.
# Le joueur récupère ensuite le flag dans le répertoire courant du conteneur.
FROM alpine:latest

RUN apk update && apk add --no-cache \
    openssh \
    && rm -rf /var/lib/apt/lists/*

# Attribution du mot de passe "inferno" à l'utilisateur "root"
RUN echo "root:inferno" | chpasswd

# Création d'un utilisateur "user" avec mot de passe "user"
RUN adduser -D user
RUN echo "user:user" | chpasswd
RUN apk add --no-cache sudo

# Exécute richelieu.sh pour obtenir un mot de passe aléatoire pour l'utilisateur "user"
COPY ./richelieu.txt /home/user/richelieu.txt
COPY ./richelieu.sh /home/user/richelieu.sh
RUN chmod +x /home/user/richelieu.sh
RUN sh /home/user/richelieu.sh


RUN ssh-keygen -A

# Dans le fichier /etc/ssh/sshd_config, paramétrer le port ouvert sur le 22, et PermitRootLogin sur "no"
RUN sed -i 's/#Port 22/Port 24/' /etc/ssh/sshd_config
# Sinon, pour le mode prod, on met PermitRootLogin sur "no"
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
# EXPOSE 22


# Exécutez le serveur SSH lorsque le conteneur démarre
CMD ["/usr/sbin/sshd", "-D"]

EXPOSE 24