#!/bin/sh
docker run -d -p 2229:22 -p 9989:3389 --name x2win -v /data:/data shimjye/x2ubuntu-kr

