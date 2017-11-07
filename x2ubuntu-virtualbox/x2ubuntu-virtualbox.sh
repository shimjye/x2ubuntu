#!/bin/sh
CID=$(docker run -d -t --name x2vbox -v /data:/data -p 22:2223 shimjye/x2ubuntu-virtualbox)
docker logs $CID

