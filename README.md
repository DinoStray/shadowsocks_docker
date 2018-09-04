# Docker of shadowsocks

* automatically restart while ss server OOM
* automatically clean up logs

you should change the following parameters of docker run cmd:

* SS_PORT the port of ss server
* SS_PWD the password used for client connection
* SS_METHOD encryption method
* -p 5050:5050 the same as SS_PORT

# run
```bash
docker run  \
--env SS_PORT=5050 \
--env SS_PWD=password \
--env SS_METHOD=aes-256-cfb \
--name shadowsocks --restart always \
-p 5050:5050 \
-d vvqboy/shadowsocks:latest
```

# docker bash
```bash
docker exec -it shadowsocks bash
```

# tail logs
```bash
# tail standard output of docker
docker logs --tail 50 --follow --timestamps shadowsocks
# or tail ssserver log
docker exec -it shadowsocks bash
less ${SS_HOME}/ssserver.log
```

# PS: build by yourself
```bash
# build
docker build -t shadowsocks .
# run
docker run  \
--env SS_PORT=5050 \
--env SS_PWD=password \
--env SS_METHOD=aes-256-cfb \
--name shadowsocks --restart always \
-p 5050:5050 \
-d shadowsocks
```

# PS: install docker
```bash
apt-get update
apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
apt-get -y update
apt-get -y install docker-ce
 
docker version
```