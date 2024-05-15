FROM alpine:latest
RUN adduser -D -s / timey
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

# Sets the user timey as read-only
RUN chmod -R 555 /home/timey

# Sets the home directory as the working directory
WORKDIR /home/timey

# Takes the soup.sh file and copies it to the container
COPY ./soup.sh /home/timey/soup.sh

# Changes the permissions of the file to make it executable
RUN chmod +x /home/timey/soup.sh
# RUN bash /home/timey/soup.sh

# Runs the soup.sh file
RUN ./soup.sh
RUN rm soup.sh