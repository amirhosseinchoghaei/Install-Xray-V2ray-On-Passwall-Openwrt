#!/bin/bash
service passwall stop
cd /tmp
wget https://hoverco.net/xray-core_1.8.0-1_mipsel_24kc.ipk
opkg install xray-core_1.8.0-1_mipsel_24kc.ipk -d ram
rm xray-core_1.8.0-1_mipsel_24kc.ipk
service passwall restart
cd /root/

echo "level one passed !"
