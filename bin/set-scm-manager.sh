#!/bin/bash
# add the scm-manager repository
echo "echo 'deb http://maven.scm-manager.org/nexus/content/repositories/releases ./' >> /etc/apt/sources.list" | sudo sh
# install gpg key for the scm-manager repository
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 D742B261
# update
sudo apt-get update
# install scm-server
sudo apt-get install -y openjdk-8-jdk scm-server

sudo mkdir /data/pub
sudo mkdir /data/pub/scm
sudo chown -R 999:999 /data/pub/scm
sudo chown -R 999:999 /opt/scm-server
sudo sed -i 's/SCM_HOME=\/var\/lib\/scm/SCM_HOME=\/data\/pub\/scm/g' /etc/default/scm-server

# rc.local docker exec x2scm /opt/scm-server/bin/scm-server

exit 0
