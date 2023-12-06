FROM centos:7

# Reference:
# https://developer.aliyun.com/mirror/centos
# https://developer.aliyun.com/mirror/centos-altarch

# https://www.alibabacloud.com/help/en/elastic-compute-service/latest/change-centos-8-repository-addresses

RUN REPO_FILE=Centos-7.repo && \
    if [ `arch` = 'aarch64' -o `arch` = 'arm64' ]; then REPO_FILE=Centos-altarch-7.repo; fi && \
    curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/$REPO_FILE && \
    sed -i -e '/mirrors.cloud.aliyuncs.com/d' -e '/mirrors.aliyuncs.com/d' /etc/yum.repos.d/CentOS-Base.repo && \
    yum update -y && \
    yum install -y perl cronie make wget

# build by offcloud.com, cache from：https://github.com/node-honeycomb/honeycomb-server/releases
# RUN wget --no-check-certificate https://ca-4.offcloud.com/cloud/download/607c4867d0a1e97ec6450d8e/honeycomb-server-1.2.4_1-2.el7.x86_64.rpm -O honeycomb-server.rpm

COPY honeycomb-server.rpm /tmp/honeycomb-server.rpm
RUN rpm -i /tmp/honeycomb-server.rpm

# 升级 node 版本
RUN wget -nv https://nodejs.org/dist/v12.13.0/node-v12.13.0-linux-x64.tar.xz && \
    tar xf node-v12.13.0-linux-x64.tar.xz && \
    mv node-v12.13.0-linux-x64 node && \
    rm -rf node-v12.13.0-linux-x64.tar.xz && \
    tar zxf /home/admin/honeycomb/target/honeycomb.tgz && \
    rm -rf honeycomb/node_modules/node && \
    mv node honeycomb/node_modules/node && \
    tar zcf honeycomb.tgz honeycomb && \
    mv honeycomb.tgz /home/admin/honeycomb/target/honeycomb.tgz && \
    chown admin:admin /home/admin/honeycomb/target/honeycomb.tgz

# set locale
COPY lang.sh /etc/profile.d

COPY start.sh /root/start.sh
RUN chmod +x /root/start.sh

CMD ['/bin/bash', 'start.sh']
