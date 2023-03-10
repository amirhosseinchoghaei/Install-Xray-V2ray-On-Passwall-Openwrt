# mi4agigabit_xray
install v2ray , xray on mi 4a gigabit openwrt

Hi Guys if you have Mi 4a router and you want run v2ray shadowsocks on your router , First You should install openwrtOS and then install passwall Package 
but there is a problem !!! your router disk space is just 8mb so not enough space to install xray ...
but Don't Worry i have a solution ... :)
(How to install Passwall on Openwrt : https://www.youtube.com/watch?v=f4-GUnCK2Wo&t=520s&ab_channel=AmirHosseinChoghaei)

# Install Service :

1- #vim /etc/init.d/amir

2- paste this script :
```
#!/bin/sh /etc/rc.common

START=98

start(){
        ubus  -t 60 wait_for network.interface network.interface.loopback # Mak>
        echo "Powered By AmirHossein Choghaei"
        sh /root/owo.sh
        
}
```

3- Write and Quit ... #wq

4- #chmod +x /etc/init.d/amir

5- #/etc/init.d/amir enable

6- #cd

7- #vim owo.sh

8- Paste this script :
```
   service passwall stop

   opkg update

   cd /tmp

   opkg download xray-core

   opkg install xray-core_1.7.5-1_mipsel_24kc.ipk -d ram

   service passwall restart
   ```


9- Write and Quit... #wq


10- chmod 777 owo.sh

11- Login to the Luci Web System>Startup>Enable amir and **Press Start**

![This is an image](https://pars-space.ir/wp-content/uploads/2023/03/Screenshot-2023-03-10-113014.jpg)

12- Go to Passwall > AppUpdate Change Xray App Path to : /tmp/usr/bin/xray 

![This is an image](https://pars-space.ir/wp-content/uploads/2023/03/Sp.jpg)

Done !

![This is an image](https://pars-space.ir/wp-content/uploads/2023/03/Passwall.jpg)

>>> when your router rebooted , it's takes about 3 min to start passwall ...
