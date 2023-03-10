service passwall stop

opkg update

cd /tmp

opkg download xray-core

opkg install xray-core_1.7.5-1_mipsel_24kc.ipk -d ram

service passwall restart
