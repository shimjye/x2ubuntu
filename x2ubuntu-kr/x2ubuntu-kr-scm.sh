#!/bin/sh
docker run -d -p 2225:22 -p 9990:8080 --name x2scm -v /data:/data shimjye/x2ubuntu-kr
# run x2ubuntu/bin/set_scm_manager.sh
