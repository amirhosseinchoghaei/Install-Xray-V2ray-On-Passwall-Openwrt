#!/bin/bash

sleep 5
service passwall stop
cd /tmp
wget https://tajhizara.org/xray8.ipk
opkg install xray8.ipk -d ram
rm xray8.ipk
service passwall restart
cd /root/

echo "OK !"
