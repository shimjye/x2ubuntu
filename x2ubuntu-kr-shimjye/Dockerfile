FROM shimjye/x2ubuntu-kr
MAINTAINER shimjye "shimjye@gmail.com"

RUN apt-get install -y wget curl vim git terminator

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
	sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && \
	apt-get update && \
	apt-get install -y google-chrome-stable

RUN apt-get clean

EXPOSE 22

CMD ["/run.sh"]
