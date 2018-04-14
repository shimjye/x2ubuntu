FROM shimjye/x2ubuntu
LABEL maintainer="shimjye@gmail.com"

RUN apt-get install -y fcitx fcitx-hangul locales
RUN locale-gen ko_KR.UTF-8
RUN mv /etc/localtime /etc/localtime.old
RUN ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime

RUN /bin/cp /home/dockerx/dockerinit/kr/environment /etc/environment
RUN /bin/cp /home/dockerx/dockerinit/kr/fcitx-autostart.desktop /etc/xdg/autostart/fcitx-autostart.desktop
RUN /bin/cp /home/dockerx/dockerinit/kr/profile /home/dockerx/.profile
RUN chown 1000:1000 /home/dockerx/.profile

RUN apt-get install -y wget curl vim git terminator

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
RUN sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get install apt-transport-https
RUN apt-get update
RUN apt-get install -y google-chrome-stable

EXPOSE 22

CMD ["/run.sh"]
