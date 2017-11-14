#!/bin/sh

# apt-get install
sudo apt-get update
sudo apt-get install -y ufw vim git curl wget

# docker setting
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo service docker start
sudo usermod -aG docker ${USER}
sudo systemctl enable docker

# ufw setting
sudo sed -i 's/DEFAULT_FORWARD_POLICY="DROP"/DEFAULT_FORWARD_POLICY="ACCEPT"/g' /etc/default/ufw
sudo ufw enable
