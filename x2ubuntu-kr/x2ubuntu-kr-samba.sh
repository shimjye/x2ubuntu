#!/bin/sh
docker run -d -p 2223:22 -p 139:139 -p 445:445 --name x2samba -v /data:/data shimjye/x2ubuntu-kr

