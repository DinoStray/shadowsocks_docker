FROM phusion/baseimage:0.10.2
LABEL maintainer="vvqboy@sina.com"

ENV SS_HOME /root/shadowsocks

RUN mkdir -p ${SS_HOME}

RUN install_clean \
    iproute2 \
    net-tools \
    python-pip \
    python-m2crypto

RUN pip install --upgrade pip
RUN pip install setuptools
RUN pip install shadowsocks

# Scripts
ADD make_conf.sh ${SS_HOME}/make_conf.sh
ADD logrotate /etc/logrotate.d/ss_logs

# Service
RUN mkdir -p    /etc/service/ss
ADD run.sh      /etc/service/ss/run
RUN chmod +x    /etc/service/ss/run
