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
docker logs --tail 50 --follow --timestamps shadowsocks
```

# build by yourself
```bash
docker build -t shadowsocks .
docker tag shadowsocks vvqboy/shadowsocks:latest
docker push vvqboy/shadowsocks:latest
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