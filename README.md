#install_xray_on_openwrt

This script is Compatible with other routers : [Support Devices List](https://downloads.openwrt.org/releases/22.03.3/targets/ramips/mt7621/)


# requirement : 38MB free "Temp Space" & 8MB free "Disk Space"

![This is an image](https://pars-space.ir/wp-content/uploads/2023/03/mi4.png)


install v2ray , xray on mi 4a gigabit openwrt

Hi Guys if you have Mi 4a router and you want run v2ray shadowsocks on your router , First You should install openwrtOS and then install passwall Package 
but there is a problem !!! your router disk space is just 8mb so not enough space to install xray ...
but Don't Worry i have a solution ... :)

(How to install Passwall on Openwrt : https://www.youtube.com/watch?v=f4-GUnCK2Wo&t=520s&ab_channel=AmirHosseinChoghaei)

# Install Service :

1- vim /etc/init.d/amir

2- paste this script :
```
#!/bin/sh /etc/rc.common
START=99

ping -c 30 172.32.32.32
if [ $? -eq 1 ]; then
    sh /root/owo.sh

fi

```

3- Write and Quit ... wq

4- chmod +x /etc/init.d/amir

5- /etc/init.d/amir enable

6- cd

7- vim owo.sh

8- Paste this script :
```
service passwall stop

cd /tmp

wget https://hoverco.net/xray-core_1.8.0-1_mipsel_24kc.ipk

opkg install xray-core_1.8.0-1_mipsel_24kc.ipk -d ram

service passwall restart

   ```


9- Write and Quit... wq


10- chmod 777 owo.sh


11- Go to Passwall > AppUpdate Change Xray App Path to : /tmp/usr/bin/xray 

![This is an image](https://pars-space.ir/wp-content/uploads/2023/03/Sp.jpg)

12- service amir restart

Done !

![This is an image](https://pars-space.ir/wp-content/uploads/2023/03/Passwall.jpg)

>>> when your router rebooted , it's takes about 3 min to start passwall with xray-core ...




