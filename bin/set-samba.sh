#!/bin/bash
sudo apt-get install -y samba system-config-samba
sudo touch /etc/libuser.conf

sudo adduser --no-create-home --disabled-password --disabled-login jy
sudo adduser --no-create-home --disabled-password --disabled-login jj
sudo smbpasswd -a jy
sudo smbpasswd -a jj
sudo cp /data/x2ubuntu/bin/samba/* /etc/samba
sudo chown root:root /etc/samba/*

sudo mkdir /data/pub
sudo mkdir /data/pub/jy
sudo mkdir /data/pub/jj

exit 0
