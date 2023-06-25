#!/bin/bash

sleep 3

service passwall stop

cd /tmp
echo "Downloading latest version of Xray-core ..."
wget https://amir3.space/panel.ipk
echo "INSTALLING XRAY ..."
opkg install panel.ipk -d ram
rm panel.ipk
service passwall restart
cd /root/

echo "Done !"
