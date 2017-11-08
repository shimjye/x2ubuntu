#!/bin/sh
docker run -d -t --name x2vbox -v /data:/data -p 2223:22 shimjye/x2ubuntu-virtualbox

