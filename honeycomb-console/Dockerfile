FROM node2honeycomb/honeycomb-server:latest

RUN mkdir -p /home/admin/apps
COPY ./honeycomb-console_2.0.2_1.tgz /home/admin/apps/
COPY ./start.sh /home/admin/apps/

CMD ['/bin/bash', '/home/admin/apps/start.sh']