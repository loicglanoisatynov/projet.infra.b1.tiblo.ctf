FROM alpine:latest
# Attribution du mot de passe "inferno" à l'utilisateur "root"
RUN echo "root:inferno" | chpasswd

# Création d'un utilisateur "user" avec mot de passe "user"
RUN adduser -D user
RUN echo "user:user" | chpasswd
RUN apk add --no-cache --upgrade bash
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

# Sets the user user as read-only
RUN chmod -R 555 /home/user

# Sets the home directory as the working directory
WORKDIR /home/user

# Takes the a-maze-ing.sh file and copies it to the container
COPY ./a-maze-ing.sh /home/user/a-maze-ing.sh

# Changes the permissions of the file to make it executable
RUN chmod +x /home/user/a-maze-ing.sh
# RUN bash /home/user/a-maze-ing.sh

# Runs the a-maze-ing.sh file
RUN ./a-maze-ing.sh
RUN rm a-maze-ing.sh
# CMD ["./a-maze-ing.sh"]

# Changes the user to user
# USER user
