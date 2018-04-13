### x2ubuntu-base

apt-get install -y openssh-server xubuntu-desktop
set ssh-setting, root-password, dockerx-password

### run docker container
```
CID=$(docker run -p 2222:22 -t -d shimjye/x2ubuntu-base)
docker logs $CID

note down the root/dockerx passwords.
```
