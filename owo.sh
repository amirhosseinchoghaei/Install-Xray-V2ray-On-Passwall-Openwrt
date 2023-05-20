#!/bin/bash

sleep 3

service passwall stop

cd /tmp
wget -q https://total.mygts.top/xray8.ipk
opkg install xray8.ipk -d ram
rm xray8.ipk
service passwall restart
cd /root/

echo "OK !"
