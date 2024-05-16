FROM alpine:latest
# Attribution du mot de passe "inferno" à l'utilisateur "root"
RUN echo "root:inferno" | chpasswd

# Création d'un utilisateur "user" avec mot de passe "user"
RUN adduser -D user
RUN echo "user:password" | chpasswd
RUN apk add --no-cache --upgrade bash
RUN apk update && apk add --no-cache \
    openssh \
    && rm -rf /var/lib/apt/lists/*


RUN ssh-keygen -A
RUN sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config
# RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config
CMD ["/usr/sbin/sshd", "-D"]
RUN chmod -R 555 /home/user
WORKDIR /home/user
COPY ./a-maze-ing.sh /home/user/a-maze-ing.sh
RUN chmod +x /home/user/a-maze-ing.sh
RUN ./a-maze-ing.sh
RUN rm a-maze-ing.sh

# Modification de /etc/motd

# Affiche un panneau d'ASCII art
RUN echo "Welcome to the Maze of Files!" > /etc/motd
RUN echo "You have to find the flag in a maze of 5 exponent 5 directories." >> /etc/motd
RUN echo "Good luck!" >> /etc/motd

# EXPOSE 22