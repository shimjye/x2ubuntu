#!/bin/sh
docker run -d -t -p 2222:22 --name x2 -v /data:/data shimjye/x2ubuntu-kr-shimjye
