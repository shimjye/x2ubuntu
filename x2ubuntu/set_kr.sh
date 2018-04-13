#!/bin/bash
sudo apt-get install -y fcitx fcitx-hangul locales
sudo locale-gen ko_KR.UTF-8
sudo mv /etc/localtime /etc/localtime.old
sudo ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime
sudo /bin/cp /home/dockerx/dockerinit/kr/environment /etc/environment
sudo /bin/cp /home/dockerx/dockerinit/kr/fcitx-autostart.desktop /etc/xdg/autostart/fcitx-autostart.desktop
sudo /bin/cp /home/dockerx/dockerinit/kr/profile /home/dockerx/.profile
sudo chown 1000:1000 /home/dockerx/.profile

exit 0
