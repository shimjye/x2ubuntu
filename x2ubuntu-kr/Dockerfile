FROM shimjye/x2ubuntu
MAINTAINER shimjye "shimjye@gmail.com"

RUN apt-get install -y fcitx fcitx-hangul locales
RUN locale-gen ko_KR.UTF-8
RUN mv /etc/localtime /etc/localtime.old
RUN ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime
ADD environment /etc/environment
RUN mkdir /home/dockerx
ADD profile /hone/dockerx/profile
RUN chown -R 1000:1000 /home/dockerx
ADD fcitx-autostart.desktop /etc/xdg/autostart/fcitx-autostart.desktop

RUN apt-get clean

EXPOSE 22

CMD ["/run.sh"]
