cd /root && rpm -i ./honeycomb-server.rpm
su admin -c "/home/admin/honeycomb/bin/server_ctl start"

while true; do
  sleep 10
done


