FROM node2honeycomb/honeycomb-server:latest

ENV HONEYCOMB_VERSION=2.0.27_1

RUN mkdir -p /home/admin/apps

COPY ./start.sh /home/admin/apps/
COPY ./server_ctl /tmp/server_ctl

# 使用commit：acc2fc5fd9f7b86299bf069c285030dd0b436abf 进行honeycomb打包
# 同时修改了meta DB config
# add sql.js
# 修改：_busboy@1.6.0@busboy/lib/utils.js
COPY honeycomb-console_$HONEYCOMB_VERSION.tgz /home/admin/apps/

ENV PATH $PATH:/home/admin/honeycomb/target/honeycomb/node_modules/.bin:/home/admin/honeycomb/target/honeycomb/bin

CMD ["/bin/bash", "/home/admin/apps/start.sh"]
