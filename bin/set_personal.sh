#!/bin/bash
sudo apt-get install -y wget curl vim git terminator

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install -y google-chrome-stable

exit 0
