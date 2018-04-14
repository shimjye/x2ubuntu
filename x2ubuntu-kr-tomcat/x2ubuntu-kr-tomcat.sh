#!/bin/sh
docker run -d -t --name x2tomcat -v /data:/data -p 2224:22 -p 9980:8080 shimjye/x2ubuntu-kr-tomcat

