cd /root && rpm -i ./honeycomb-server.rpm
cd /home/admin/honeycomb/bin
su admin -c "server_ctl start"

while true; do
  sleep 10
done


