#!/bin/sh

# data dir
sudo mkdir /data && sudo chown ${USER}:${USER} /data
sudo mkdir /data/x2ubuntu && sudo chown  ${USER}:${USER} /data/x2ubuntu
sudo git clone https://github.com/shimjye/x2ubuntu /data/x2ubuntu
