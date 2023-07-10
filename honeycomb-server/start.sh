#!/bin/bash

set -e

echo "starting honeycomb server..."
su admin && cd /home/admin/honeycomb/bin && server_ctl start

sleep inf
