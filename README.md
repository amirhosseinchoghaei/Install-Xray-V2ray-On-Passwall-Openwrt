#install_v2ray_xray_on_openwrt
Architecture : mipsel_24kc 


# requirement : 38MB free "Temp Space"


✅ Recommended Openwrt Version : 22.03.5 > [Direct Link](https://downloads.openwrt.org/releases/22.03.5/targets/ramips/mt7621/)


* [Xiaomi 4a Gigabit openwrt 22.03.3 Recommended](https://archive.openwrt.org/releases/22.03.3/targets/ramips/mt7621/openwrt-22.03.3-ramips-mt7621-xiaomi_mi-router-4a-gigabit-squashfs-sysupgrade.bin)

* when you want downgrade openwrt please Uncheck ( Keep setting ) . it's for clear installation .

[![visitor badge](https://img.shields.io/badge/Chat%20on-Telegram-blue.svg)](https://t.me/AmirHosseinTSL) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)


install v2ray , xray-core , Sing-Box , i'm trying to install on mi 4a gigabit :

Hi Guys if you want to run v2ray shadowsocks on your router , First You should install openwrtOS and then install passwall Package 
but there is a problem !!! your router disk space is just 8mb so not enough space to install xray ...
but Don't Worry i have a solution ... :)

(How to install Passwall on Openwrt : https://www.youtube.com/watch?v=f4-GUnCK2Wo&t=520s&ab_channel=AmirHosseinChoghaei)

Types Support :

VLESS (XRAY ✅ SING-BOX ✅)

VMESS (XRAY ✅ SING-BOX ✅)

REALITY (XRAY ✅ SING-BOX ✅)

TROJAN (XRAY ✅ SING-BOX ✅)

HYSTERIA2 (XRAY ❌ SING-BOX ✅)

TUC (XRAY ❌ SING-BOX ✅)

SHADOWSOCKS (XRAY ✅ SING-BOX ✅)

WIREGUARD (XRAY ✅ SING-BOX ✅)

SOCKS (XRAY ✅ SING-BOX ✅)

HTTP (XRAY ✅ SING-BOX ✅)

# Install Xray or Sing-Box in one Step + IRAN TRAFFIC BYPASS:

1- xray version : 1.8.6 latest update ! 
sing-box version : 1.7.6 latest update ! 

✅ improved : -40 % lower size > luci-app-passwall = ~~980~~kb=610 kb
```
rm -f amirhossein.sh && wget https://raw.githubusercontent.com/amirhosseinchoghaei/mi4agigabit/main/amirhossein.sh && chmod 777 amirhossein.sh && sh amirhossein.sh
```

Done !

- *Automatic Xray Update After each reboot*


![This is an image](https://pars-space.ir/wp-content/uploads/2023/09/v2ray-openwrt.jpg)



![This is an image](https://pars-space.ir/wp-content/uploads/2023/09/passwall-openwrt-1.jpg)

>>> when your router rebooted , it's takes about 3 min to start passwall with xray-core ...




# Update :

```
amir reload
```


# Uninstall :

```
rm -f unis.sh && wget -q https://raw.githubusercontent.com/amirhosseinchoghaei/Install-Xray-V2ray-On-Passwall-Openwrt/main/unis.sh && chmod 777 unis.sh && sh unis.sh
```




# 🔥 New Update : You Can install Passwall + Xray in One Step Full Automatic: https://github.com/amirhosseinchoghaei/Passwall 


