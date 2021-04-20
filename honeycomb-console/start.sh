cd /root && rpm -i ./honeycomb-server.rpm
su admin -c "/home/admin/honeycomb/bin/server_ctl start"

export PATH=$PATH:/home/admin/honeycomb/target/honeycomb/node_modules/.bin/
export PATH=$PATH:/home/admin/honeycomb/target/honeycomb/bin/

cd /home/admin/apps && control publish ./honeycomb-console_2.0.2_1.tgz

while true; do
  sleep 10;
done
