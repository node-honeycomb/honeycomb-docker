FROM centos:7

COPY start.sh /root/start.sh

RUN yum update -y &&\
    yum install -y perl cronie make wget

# build by offcloud.com, cache from：https://github.com/node-honeycomb/honeycomb-server/releases
# RUN wget --no-check-certificate https://ca-4.offcloud.com/cloud/download/607c4867d0a1e97ec6450d8e/honeycomb-server-1.2.4_1-2.el7.x86_64.rpm -O honeycomb-server.rpm

COPY honeycomb-server.rpm /root/honeycomb-server.rpm

RUN chmod +x /root/start.sh

CMD ['/bin/bash', 'start.sh']

