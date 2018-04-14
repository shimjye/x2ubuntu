#!/bin/sh
docker run -d -p 2223:22 --name x2 --privileged -v /data:/data shimjye/x2ubuntu-kr

