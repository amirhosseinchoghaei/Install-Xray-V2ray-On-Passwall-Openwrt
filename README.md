# mi4agigabit
install v2ray , xray on mi 4a gigabit openwrt

Hi Guys if you have Mi 4a router and you want run v2ray shadowsocks on your router , First You should install openwrtOS and then install passwall Package 
but there is a problem !!! your router disk space is just 8mb so not enough space to install xray ...
but Don't Worry i have a solution ... :)
(How to install Passwall on Openwrt : https://www.youtube.com/watch?v=f4-GUnCK2Wo&t=520s&ab_channel=AmirHosseinChoghaei)

Install Service :

1- vim /etc/init.d/amir

2- paste this script :

#!/bin/sh /etc/rc.common

START=98

start(){
        ubus  -t 60 wait_for network.interface network.interface.loopback # Mak>
        echo "Powered By AmirHossein Choghaei"
        sh /root/owo.sh
        
}

3- Write and Quit ... wq

4- chmod +x /etc/init.d/amir

5- /etc/init.d/amir enable





