FROM alpine:latest
RUN adduser -D -s / timey
RUN echo 'timey:password' | chpasswd

# Takes the a-maze-ing.sh file and copies it to the container
COPY a-maze-ing.sh /home/timey/a-maze-ing.sh

# Changes the permissions of the file to make it executable
RUN chmod +x /home/timey/a-maze-ing.sh

# Changes the user to timey
USER timey

# Sets the working directory to /home/timey
WORKDIR /home/timey

# Runs the a-maze-ing.sh file
CMD ["./a-maze-ing.sh"]

