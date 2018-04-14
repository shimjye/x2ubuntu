#!/bin/bash
sudo wget -q http://ftp.kaist.ac.kr/eclipse/technology/epp/downloads/release/neon/2/eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz && \
    wget -qO- http://ftp.kaist.ac.kr/eclipse/technology/epp/downloads/release/neon/2/eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz.md5 | md5sum -c - && \
    tar zxf eclipse-jee-*.tar.gz && \
    rm eclipse-jee-*.tar.gz && \
    mv eclipse /opt/eclipse-jee && \
    chown -R 1000:1000 /opt/eclipse-jee

exit 0
