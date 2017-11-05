
### How to run.

Pull from Docker Index and run the image

```
CID=$(docker run -p 2222:22 -t -d shimjye/x2ubuntu)
docker logs $CID

note down the root/dockerx passwords.
```

OR

build it yourself.

```
git clone https://github.com/shimjye/x2ubuntu.git .
docker build -t [yourimagename] .
CID=$(docker run -p 2222:22 -t -d [yourimagename])

docker logs $CID

note the root/dockerx passwords
```

### How to run/connect to server with a Client?

Download the x2go client for your OS from:
http://wiki.x2go.org/doku.php/doc:installation:x2goclient

Create a new session and connect to your seerver
Host : (Your Server IP) Port : 2222 Username : root Password : (get it from the Docker logs above)

Select the Session TYPE as : XFCE

You can also SSH to the docker container directly with root or dockerx users and their passwords over the port 2222 with linux ssh or windows putty client.

