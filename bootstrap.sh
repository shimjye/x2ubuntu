#!/bin/sh

# apt-get install
sudo apt-get update
sudo apt-get install -y ufw vim git terminator curl wget x2goclient xubuntu-desktop

# docker setting
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo service docker start
sudo usermod -aG docker ${USER}
sudo systemctl enable docker

# ufw setting
sudo sed -i 's/DEFAULT_FORWARD_POLICY="DROP"/DEFAULT_FORWARD_POLICY="ACCEPT"/g' /etc/default/ufw
sudo ufw enable

# data dir
sudo mkdir /data && sudo chown ${USER}:${USER} /data
sudo mkdir /data/x2ubuntu && sudo chown  ${USER}:${USER} /data/x2ubuntu
sudo git clone https://github.com/shimjye/x2ubuntu /data/x2ubuntu

sudo apt-get clean
