#install_v2ray_xray_on_openwrt
Target Platform	: ramips/mt7621 : [Support Devices List](https://downloads.openwrt.org/releases/22.03.3/targets/ramips/mt7621/)


# requirement : 38MB free "Temp Space" & 1MB free "Disk Space"




install v2ray , xray-core , i'm trying to install on mi 4a gigabit :

Hi Guys if you want to run v2ray shadowsocks on your router , First You should install openwrtOS and then install passwall Package 
but there is a problem !!! your router disk space is just 8mb so not enough space to install xray ...
but Don't Worry i have a solution ... :)

(How to install Passwall on Openwrt : https://www.youtube.com/watch?v=f4-GUnCK2Wo&t=520s&ab_channel=AmirHosseinChoghaei)

# Install Service in one Step:

1- xray version : 1.8.3 latest update !
```
wget https://raw.githubusercontent.com/amirhosseinchoghaei/mi4agigabit/main/amirhossein.sh && chmod 777 amirhossein.sh && sh amirhossein.sh
```

Done !

![This is an image](https://pars-space.ir/wp-content/uploads/2023/03/Sp.jpg)



![This is an image](https://pars-space.ir/wp-content/uploads/2023/03/Passwall.jpg)

>>> when your router rebooted , it's takes about 3 min to start passwall with xray-core ...




# Update :

- if you have any problem , insert this update line
```
sh /root/up.sh
```


# Uninstall :

```
wget -q https://raw.githubusercontent.com/amirhosseinchoghaei/Install-Xray-V2ray-On-Passwall-Openwrt/main/unis.sh && chmod 777 unis.sh && sh unis.sh
```
