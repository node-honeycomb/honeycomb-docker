/bin/bash /root/start.sh

PATH=$PATH:/home/admin/honeycomb/target/honeycomb/node_modules/.bin/
PATH=$PATH:/home/admin/honeycomb/target/honeycomb/bin/

cd /home/admin/apps && control publish ./honeycomb-console_2.0.2_1.tgz