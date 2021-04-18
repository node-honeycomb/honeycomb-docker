FROM centos:7

COPY start.sh /root/start.sh

RUN yum update -y &&\
    yum install -y perl cronie make wget

RUN wget --no-check-certificate https://github.com/node-honeycomb/honeycomb-server/releases/download/v1.2.4_1_1/honeycomb-server-1.2.4.el7.x86_64.rpm -O honeycomb-server.rpm

RUN chmod +x /root/start.sh

CMD ['/bin/bash', 'start.sh']

