#!/bin/bash
sudo wget -q http://ftp.kaist.ac.kr/eclipse/technology/epp/downloads/release/neon/2/eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz && \
    sudo wget -qO- http://ftp.kaist.ac.kr/eclipse/technology/epp/downloads/release/neon/2/eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz.md5 | md5sum -c - && \
    sudo tar zxf eclipse-jee-*.tar.gz && \
    sudo rm eclipse-jee-*.tar.gz && \
    sudo mv eclipse /opt/eclipse-jee && \
    sudo chown -R 1000:1000 /opt/eclipse-jee

exit 0
