FROM centos:7

# Reference:
# https://developer.aliyun.com/mirror/centos
# https://developer.aliyun.com/mirror/centos-altarch

# https://www.alibabacloud.com/help/en/elastic-compute-service/latest/change-centos-8-repository-addresses

RUN REPO_FILE=Centos-7.repo && \
    if [ `arch` = 'aarch64' -o `arch` = 'arm64' ]; then REPO_FILE=Centos-altarch-7.repo; fi && \
    curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/$REPO_FILE && \
    sed -i -e '/mirrors.cloud.aliyuncs.com/d' -e '/mirrors.aliyuncs.com/d' /etc/yum.repos.d/CentOS-Base.repo && \
    sed -i 's/mirrors.aliyun.com/mirrors.ustc.edu.cn/g' /etc/yum.repos.d/CentOS-Base.repo && \
    yum update -y && \
    yum install -y perl cronie make wget

# build by offcloud.com, cache from：https://github.com/node-honeycomb/honeycomb-server/releases
# RUN wget --no-check-certificate https://ca-4.offcloud.com/cloud/download/607c4867d0a1e97ec6450d8e/honeycomb-server-1.2.4_1-2.el7.x86_64.rpm -O honeycomb-server.rpm

COPY honeycomb-server.rpm /tmp/honeycomb-server.rpm
RUN rpm -i /tmp/honeycomb-server.rpm

# set locale
COPY lang.sh /etc/profile.d

COPY start.sh /root/start.sh
RUN chmod +x /root/start.sh

CMD ['/bin/bash', 'start.sh']
