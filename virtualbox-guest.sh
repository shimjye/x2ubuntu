#!/bin/sh

# virtualbox-guest-additions install
# rc.local mount -t vboxsf -o uid=1000,gid=1000,dmode=0755,fmode=0755 data /data
sudo apt-get update
sudo apt-get install virtualbox-guest-additions-iso -y
sudo mount -o loop /usr/share/virtualbox/VBoxGuestAdditions.iso /mnt
sudo sh /mnt/VBoxLinuxAdditions.run
sudo usermod -a -G vboxsf ${USER}
sudo mkdir /data
sudo chown 1000:1000 /data
