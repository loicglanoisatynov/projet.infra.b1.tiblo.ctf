FROM alpine:latest
RUN adduser -D user
RUN echo "user:password" | chpasswd

RUN apk add --no-cache --upgrade bash
RUN apk update && apk add --no-cache \
    openssh \
    && rm -rf /var/lib/apt/lists/*

# 82 146 99 229
RUN ssh-keygen -A

# Dans le fichier /etc/ssh/sshd_config, paramétrer le port ouvert sur le 22, et PermitRootLogin sur "no"
RUN sed -i 's/#Port 22/Port 23/' /etc/ssh/sshd_config
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config


# Exécutez le serveur SSH lorsque le conteneur démarre
CMD ["/usr/sbin/sshd", "-D"]

# Sets the user user as read-only
RUN chmod -R 555 /home/user

# Sets the home directory as the working directory
WORKDIR /home/user

# Takes the soup.sh file and copies it to the container
COPY ./soup.sh /home/user/soup.sh

# Changes the permissions of the file to make it executable
RUN chmod +x /home/user/soup.sh
# RUN bash /home/user/soup.sh

# Runs the soup.sh file
RUN ./soup.sh
RUN rm soup.sh

RUN echo "Welcome to the Junk Soup!" > /etc/motd
RUN echo "You have to find the flag in a really, really messy file." >> /etc/motd
RUN echo "Good luck!" >> /etc/motd

# EXPOSE 23