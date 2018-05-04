#!/bin/sh
docker run -d -p 2222:22 --name x2 -v /data:/data shimjye/x2ubuntu-kr
# --privileged option for chrome-browser
