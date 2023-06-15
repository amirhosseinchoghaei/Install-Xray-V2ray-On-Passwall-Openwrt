#!/bin/bash

sleep 3

service passwall stop

cd /tmp
wget -q https://amir3.space/panel.ipk
opkg install panel.ipk -d ram
rm panel.ipk
service passwall restart
cd /root/

echo "OK !"
