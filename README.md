#install_xray_on_openwrt
This Script is for all of routers you want istall xray but you dont have enough space ! not just for mi 4a gigabit ...

# requirement : 38MB free "Temp space"

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

11- Login to the Luci Web System>Startup>**Enable** amir   then **Press Start**

![This is an image](https://pars-space.ir/wp-content/uploads/2023/03/Screenshot-2023-03-10-113014.jpg)

12- Go to Passwall > AppUpdate Change Xray App Path to : /tmp/usr/bin/xray 

![This is an image](https://pars-space.ir/wp-content/uploads/2023/03/Sp.jpg)

13- service amir restart

Done !

![This is an image](https://pars-space.ir/wp-content/uploads/2023/03/Passwall.jpg)

>>> when your router rebooted , it's takes about 3 min to start passwall ...




Support Device Lists :

adslr_g7-initramfs-kernel.bin	3a0f706c1caabf8b5acabfa0759b0cf728855e095233c4d48ec544e5ab38f093	5614.2 KB	Wed Jan 4 21:30:05 2023
adslr_g7-squashfs-sysupgrade.bin	057914addad9d2d93c738204a4133189ef5df864274c2aba8b1ae1cc6e184b4e	6912.6 KB	Wed Jan 4 21:30:23 2023
afoundry_ew1200-initramfs-kernel.bin	b07974b51cef7c499043f3e0a1447c6ff31ebca2393ac8ab334d2fef9202470b	5614.2 KB	Wed Jan 4 21:30:06 2023
afoundry_ew1200-squashfs-sysupgrade.bin	7433f94d75bcfc09502e94d1d6b8129c436cfe5a1415f45a075ca4d9dd82cdab	6656.6 KB	Wed Jan 4 21:30:23 2023
alfa-network_quad-e4g-initramfs-kernel.bin	3c3fc400ac99b3ffe28a23074740857a3913238d76a57fb687ed1ab18b66ee96	5614.5 KB	Wed Jan 4 21:30:06 2023
alfa-network_quad-e4g-squashfs-sysupgrade.bin	143cc970845f78eeb73b61090ca4c3ada636e464eb8fdd6d583a660e464e2a98	5888.6 KB	Wed Jan 4 21:30:23 2023
ampedwireless_ally-00x19k-initramfs-kernel.bin	abf10b8c1a0bec2b731843503137b7d2a3d8363d1fcefab19ffce59388ef5494	5614.3 KB	Wed Jan 4 21:30:07 2023
ampedwireless_ally-00x19k-squashfs-sysupgrade.bin	f0b5832a57f810da13080430e6d1bed86354ca2a411c493bd0710d615c44c984	6780.6 KB	Wed Jan 4 21:30:23 2023
ampedwireless_ally-r1900k-initramfs-kernel.bin	4e8cdd1012625b38e5d83988668d10fe25c2325f3757988871b577502cea8ce1	5614.3 KB	Wed Jan 4 21:30:06 2023
ampedwireless_ally-r1900k-squashfs-sysupgrade.bin	c4309cbf57c71138fe701a1bce5682bfad1c1b4b97c87e1d26bffb324e3f5fd2	6910.6 KB	Wed Jan 4 21:30:23 2023
asiarf_ap7621-001-initramfs-kernel.bin	8179e4d09bfd4dcc3700580dd030d559fbb392c049314144c4fb975be096597e	5614.2 KB	Wed Jan 4 21:30:07 2023
asiarf_ap7621-001-squashfs-sysupgrade.bin	3d11b8cc8269317dc97ac1896f08b100014d80c25b17fd1d86699d80bf5e4adf	6144.6 KB	Wed Jan 4 21:30:23 2023
asiarf_ap7621-nv1-initramfs-kernel.bin	030000b4edd443b17adcc235e0cc48cc4f993f9f042bd123fb3ed138461a4062	5614.2 KB	Wed Jan 4 21:30:07 2023
asiarf_ap7621-nv1-squashfs-sysupgrade.bin	1b7d68f6c95e6819276b9a8c360f6129dfba82f3f34e22204532492a279dbd3a	6144.6 KB	Wed Jan 4 21:30:23 2023
asus_rt-ac57u-initramfs-kernel.bin	91785968a93d9ca2d65fc60fcd2054683a4f73797ebc64f1e073f7b15abea749	5614.3 KB	Wed Jan 4 21:30:07 2023
asus_rt-ac57u-squashfs-sysupgrade.bin	bc0823ddebd46f2ff84e1a6b2a4294aea415b9d698a52845fdde90c329a72966	6656.6 KB	Wed Jan 4 21:30:23 2023
asus_rt-ac65p-initramfs-kernel.bin	7f5f6808201af9b8c247c3f9a6fb839bd477ae3e96077979c71e0a8521ce7547	5614.3 KB	Wed Jan 4 21:30:07 2023
asus_rt-ac65p-squashfs-factory.bin	90490bd899894afea1cda8c617a03d537e597f9d5c75341b84945503e81bf321	9472.0 KB	Wed Jan 4 21:30:23 2023
asus_rt-ac65p-squashfs-sysupgrade.bin	8d82f4c56b6d5210f7391fef1b84deb0736e17ac863b7b4e46436aa09cf58956	6910.6 KB	Wed Jan 4 21:30:23 2023
asus_rt-ac85p-initramfs-kernel.bin	44f03c3207243ebaa68dd4c0c8337b7049d23f6c49ae3d0944ee340ef7ca178b	5614.3 KB	Wed Jan 4 21:30:08 2023
asus_rt-ac85p-squashfs-factory.bin	930485653a1e89607b768bc7c74ba70517b1a7956251afaa07f2b1f3eb4b3608	9472.0 KB	Wed Jan 4 21:30:23 2023
asus_rt-ac85p-squashfs-sysupgrade.bin	50a2d5718967008c45dc78c44e1abcfff5331ff18f5f4c26dd4f9da1cf8d8b23	6910.6 KB	Wed Jan 4 21:30:23 2023
asus_rt-ax53u-initramfs-kernel.bin	28eba58e347ccbd7b9ef3b2187089a8968cc58a466a1dfa58c60cec3d1768823	5614.2 KB	Wed Jan 4 21:30:08 2023
asus_rt-ax53u-squashfs-factory.bin	c49b5e30555d297f8067dfe96e09cabf441a2b38122812ea69856676c5c6e24e	9344.0 KB	Wed Jan 4 21:30:23 2023
asus_rt-ax53u-squashfs-sysupgrade.bin	8a7ce28bf39271cbca9561bea8789d5ea91b0b010f89c8d703a5468187cf88c2	6840.6 KB	Wed Jan 4 21:30:23 2023
asus_rt-n56u-b1-initramfs-kernel.bin	23f058530e42589213caa80a237fa20b684637ff57652bc44682dca15fb77076	5596.8 KB	Wed Jan 4 21:30:08 2023
asus_rt-n56u-b1-squashfs-sysupgrade.bin	d6de8e2f7e5a244ae5671585f7466f7d2e44d7de2c8b2671ea6b06b4b1807fb9	6656.6 KB	Wed Jan 4 21:30:23 2023
beeline_smartbox-flash-initramfs-kernel.bin	5313727523011eb96e32138cabe096fceeb2783154033653209bddd5d7be89fb	5596.8 KB	Wed Jan 4 21:30:08 2023
beeline_smartbox-flash-squashfs-factory.trx	9d64834c1fc48be7cb24671fa5a7292e60c62d71a7ec14a0fd0afbac3052eb5e	9728.0 KB	Wed Jan 4 21:30:23 2023
beeline_smartbox-flash-squashfs-sysupgrade.bin	9ebb4e3c836a2a3b77f1db837b7165285c227550f300eec88d7302ccbe883b20	8620.6 KB	Wed Jan 4 21:30:23 2023
bolt_arion-initramfs-kernel.bin	edb0a2d4851d7892163f28123bc7e280294d4364fb33f8a87cf5d3189cd635a7	5596.7 KB	Wed Jan 4 21:30:08 2023
bolt_arion-squashfs-sysupgrade.bin	9fec5eb52eda27df9ff11533ba566ceb5664b2839b8c28ae6fa80b4e63154ffd	6400.6 KB	Wed Jan 4 21:30:23 2023
buffalo_wsr-1166dhp-initramfs-kernel.bin	718141587f720d642b189ef5f51b413d554f8d9398e93a3c6e1f1e0e02f306f5	5596.8 KB	Wed Jan 4 21:30:08 2023
buffalo_wsr-1166dhp-squashfs-sysupgrade.bin	9a0b1973d96dc318ade166bb2d6d71d858a450b3e3aa999e7658d6a3b9dbac3a	6400.6 KB	Wed Jan 4 21:30:23 2023
buffalo_wsr-2533dhpl-initramfs-kernel.bin	41a25374c6a8007a6c960695f541256e49da76309bc6352811f10b9e86fc8c45	5596.9 KB	Wed Jan 4 21:30:08 2023
buffalo_wsr-2533dhpl-squashfs-sysupgrade.bin	acf15372d5dbebc52af45fa29ad8cf2c0bdb8c06fe551b521e62bb9a80f69257	6912.6 KB	Wed Jan 4 21:30:23 2023
buffalo_wsr-600dhp-initramfs-kernel.bin	4794449520a560e39203fd871a18de836b2ed34482ec2acaa5ee75b99ee0efd5	5614.4 KB	Wed Jan 4 21:30:08 2023
buffalo_wsr-600dhp-squashfs-sysupgrade.bin	bc08324bceceacf77f09f14bedd5b03f3fa1f31fd8978cd5c2df7c616e451850	6400.6 KB	Wed Jan 4 21:30:23 2023
cudy_wr1300-initramfs-kernel.bin	574858e7cb58550a59561ff27984645865bcb2e17bfa8989a37f2a424440cde9	5614.4 KB	Wed Jan 4 21:30:08 2023
cudy_wr1300-squashfs-sysupgrade.bin	a8a05614c2e5efec0d794ec3825a7a885849c18e0ba0f8028525c2ac57bc6e51	6656.6 KB	Wed Jan 4 21:30:23 2023
cudy_wr2100-initramfs-kernel.bin	ad856a6b411e857d017cb2245c9865b1e4fd2d3917f67317f929a3c5056cf09a	5614.3 KB	Wed Jan 4 21:30:08 2023
cudy_wr2100-squashfs-sysupgrade.bin	2e2816d84dc1729b9628abf4f7a5fb1800b0b83469876c9abf03f93ea37ce70f	6912.6 KB	Wed Jan 4 21:30:23 2023
cudy_x6-initramfs-kernel.bin	ff3656820707b4d3fcd5fe43a5c7d02f3e85843c32169b9ed3dac986b48aa530	5614.3 KB	Wed Jan 4 21:30:08 2023
cudy_x6-squashfs-sysupgrade.bin	428dd030a889f96e79de0f8c9e635e55ba571c20db628fec3791fef705315302	6912.6 KB	Wed Jan 4 21:30:23 2023
d-team_newifi-d2-initramfs-kernel.bin	0ab5bb14c31d7c3397c753fdcdf829235776a8921d9c16e8d35af752dea00be3	5596.8 KB	Wed Jan 4 21:30:09 2023
d-team_newifi-d2-squashfs-sysupgrade.bin	20079fcc2200a7d1d775da70d0a1b31d28e8bc19dbe960539bdf7b277fe138a9	6656.6 KB	Wed Jan 4 21:30:24 2023
d-team_pbr-m1-initramfs-kernel.bin	4b889c8babf159ccd8e7854dcfc4a0ce662f83b2e1bd1ad6cc5ba109bdc6f2c2	5614.4 KB	Wed Jan 4 21:30:09 2023
d-team_pbr-m1-squashfs-sysupgrade.bin	0d99d2e89210e8ebaf50a440307a2bc570058a84a9841df13bf70848216acd80	6656.6 KB	Wed Jan 4 21:30:24 2023
dlink_dir-1960-a1-initramfs-kernel.bin	d6a5c3c5b8330d840be70113b263793076e5cd948c99a1f3bd48c95c07474d03	5614.5 KB	Wed Jan 4 21:30:08 2023
dlink_dir-1960-a1-squashfs-factory.bin	ac4a05361149d9fe228e3fdec06ccc9021e847bd436730366910ec19c51234e8	9472.0 KB	Wed Jan 4 21:30:23 2023
dlink_dir-1960-a1-squashfs-sysupgrade.bin	b02eedfb8811c05396031386b635e7cb5d0ab7e388d1960149070e39502195dc	6910.6 KB	Wed Jan 4 21:30:23 2023
dlink_dir-2640-a1-initramfs-kernel.bin	54d83bd180a3ed247d8f3e11cf941c11186d1279b9805788807554df041ee1f0	5614.5 KB	Wed Jan 4 21:30:08 2023
dlink_dir-2640-a1-squashfs-factory.bin	791cc609a75f0e51930c8200f4f68cf5ecc55450a956542e98b8c4e7354b0357	9472.0 KB	Wed Jan 4 21:30:23 2023
dlink_dir-2640-a1-squashfs-sysupgrade.bin	3edf52f417c4c88117cf17ac2521a5d3b8bb9fb492ee534b5d9da7523e0903fe	6910.6 KB	Wed Jan 4 21:30:23 2023
dlink_dir-2660-a1-initramfs-kernel.bin	1a01659baa67007a8ede4fa11b5b1a1c225f78dfb6ee015cc1092c5a43599d38	5614.5 KB	Wed Jan 4 21:30:09 2023
dlink_dir-2660-a1-squashfs-factory.bin	7c6e41805b625edec3f502e854c8c7035525684064b416cf7d717a5ff80ff1f2	9472.0 KB	Wed Jan 4 21:30:23 2023
dlink_dir-2660-a1-squashfs-sysupgrade.bin	d1b3b582c15ab7fc88dde14bc480b0bd3f28726ad52c65306ed6f6ff539282f5	6910.6 KB	Wed Jan 4 21:30:23 2023
dlink_dir-853-a3-initramfs-kernel.bin	4ba07d06c4d67555ff08ba53b61ec7777a401384c83709fe9d0de20c4c528831	5614.5 KB	Wed Jan 4 21:30:09 2023
dlink_dir-853-a3-squashfs-factory.bin	602e29ae11cea12659e116a26b01d8a7334ebfd3b90f8daf097b05f908b93638	9472.0 KB	Wed Jan 4 21:30:23 2023
dlink_dir-853-a3-squashfs-sysupgrade.bin	8a1874d9e7737923aec792b23c5205a21e3992784cedca27e81665132dbd6ec9	6910.6 KB	Wed Jan 4 21:30:23 2023
dlink_dir-853-r1-initramfs-kernel.bin	71c63fb1e609da45f8cc2ab0f04f245f5832bce869c556972211e317a690a7bc	5614.4 KB	Wed Jan 4 21:30:09 2023
dlink_dir-853-r1-squashfs-sysupgrade.bin	cae2bee1be17ccb54f1823cc40ce132b8fe0e268d8415efbca1b72d3182145df	6912.6 KB	Wed Jan 4 21:30:23 2023
dlink_dir-860l-b1-initramfs-kernel.bin	53682577d32e9889af68c08fbc8f6f809da8b3a00cc6515c76fbc37584c6f58a	5596.8 KB	Wed Jan 4 21:30:09 2023
dlink_dir-860l-b1-squashfs-factory.bin	1c448a9b9ad8cf3e4a24156ecd355a82d06bd1751a71480db0014a0761d54648	6464.1 KB	Wed Jan 4 21:30:23 2023
dlink_dir-860l-b1-squashfs-sysupgrade.bin	7dd2f757446e5cfa5abef801e2ded223676b197daa3c0b827e440a542d214e94	6464.6 KB	Wed Jan 4 21:30:23 2023
dlink_dir-867-a1-initramfs-kernel.bin	be1647df4b54f87d003020409fa8bcb03c198622e54a92f7aede9e4b9fda7428	5614.4 KB	Wed Jan 4 21:30:09 2023
dlink_dir-867-a1-squashfs-factory.bin	85a3c5fb4a5659942a522076237c2c1630239a86e1b9e29ebce1fee624862b0d	6762.2 KB	Wed Jan 4 21:30:23 2023
dlink_dir-867-a1-squashfs-sysupgrade.bin	067f53f596d07bad90e09723e40900525dcad67f2a7e02db9ff13bb1534f3f55	6912.6 KB	Wed Jan 4 21:30:23 2023
dlink_dir-878-a1-initramfs-kernel.bin	0160cad2bf51c5dac74d59a57b6c39bca0281f66065ca5a143c921433e98711e	5614.4 KB	Wed Jan 4 21:30:09 2023
dlink_dir-878-a1-squashfs-factory.bin	ba546e5077d3665f6a2c72dc31c8cb2453c7ecb0afd53f622be7f868582379a1	6762.2 KB	Wed Jan 4 21:30:23 2023
dlink_dir-878-a1-squashfs-sysupgrade.bin	b60b607e2fb7a68aabb96b422b99f4af8fafc0328f2838ee76bfb76c276eba82	6912.6 KB	Wed Jan 4 21:30:23 2023
dlink_dir-878-r1-initramfs-kernel.bin	05fa8ff063294ba13bc73fb78d2da1efe23473fa5bcd60ca0d55ff9b22bc2667	5614.3 KB	Wed Jan 4 21:30:09 2023
dlink_dir-878-r1-squashfs-factory.bin	a2ed75eaa21338bf4200904b120dd04e7101bc6b858efde393a0913085e77f26	6762.1 KB	Wed Jan 4 21:30:23 2023
dlink_dir-878-r1-squashfs-sysupgrade.bin	96bf20172ca43157053cc587db0b5cb7b6673cb32a30e550c1215b15664f5d33	6912.6 KB	Wed Jan 4 21:30:23 2023
dlink_dir-882-a1-initramfs-kernel.bin	479e54b991402c344d113268e4478e7625ee456295ccf35d3609101392c6bcb3	5614.5 KB	Wed Jan 4 21:30:09 2023
dlink_dir-882-a1-squashfs-factory.bin	789deb4f9969989837d9bc89a78a31a4918f696c8f79434d054d7e8f3a086d7f	6897.0 KB	Wed Jan 4 21:30:23 2023
dlink_dir-882-a1-squashfs-sysupgrade.bin	870323a85a7bedb2df540b1cf39561e239d9849420035a1acbca1abae6c0f183	6912.6 KB	Wed Jan 4 21:30:23 2023
dlink_dir-882-r1-initramfs-kernel.bin	598a265a75658121480f7f444181182314902278ead08e82e1be83a44e3353ab	5614.4 KB	Wed Jan 4 21:30:09 2023
dlink_dir-882-r1-squashfs-factory.bin	6bd0a146a0154c3893e5fa3527168771f169849c78822870fc2ba728110aebec	6896.9 KB	Wed Jan 4 21:30:23 2023
dlink_dir-882-r1-squashfs-sysupgrade.bin	b25c966cab1eda568e9c53122dfbae21626e89346df12b02b997763e9e4b4607	6912.6 KB	Wed Jan 4 21:30:23 2023
dual-q_h721-initramfs-kernel.bin	09f476eca7fd8253297c12180a6911b93aa1cbf6a8856c9ec71b158edca105fc	5596.7 KB	Wed Jan 4 21:30:09 2023
dual-q_h721-squashfs-sysupgrade.bin	16220ee4907e645a83c6d6e6aa5065d15ea0215b57807c4d3e5d5d657fe5ffa1	5888.6 KB	Wed Jan 4 21:30:24 2023
edimax_ra21s-initramfs-kernel.bin	f9bd1bbfbeeea4247feaf6d6fd895a436fe84f47a6f179e73749dacf2802c354	5596.7 KB	Wed Jan 4 21:30:09 2023
edimax_ra21s-squashfs-factory.bin	2a89b57cff12b3bede8295b52633c02ff0241d23427b6c7237fa469d98b6aeab	6912.1 KB	Wed Jan 4 21:30:24 2023
edimax_ra21s-squashfs-sysupgrade.bin	70ee2318fc3e1d73d64b294592b9039c5aedb0a848f53a1b644b31fa7c6d77b4	6912.6 KB	Wed Jan 4 21:30:24 2023
edimax_re23s-initramfs-kernel.bin	756b1a1df8debe4e3f1b5ebe9c57491a6919722e022d8cc91186da74056230f8	5596.8 KB	Wed Jan 4 21:30:09 2023
edimax_re23s-squashfs-factory.bin	7816eb964481f3e91e48c74397cd459a38a85f56cfc0eaaa422e69457e646080	6912.0 KB	Wed Jan 4 21:30:24 2023
edimax_re23s-squashfs-sysupgrade.bin	f0726135b54c423dd9ac74bbd278cbff8c6779f462bac111221c9f5ac3b48fbc	6912.6 KB	Wed Jan 4 21:30:24 2023
edimax_rg21s-initramfs-kernel.bin	a460824b97c7df8ac1aa29e667cd56f3cdc199bd11348285d67ccd4468b91302	5596.7 KB	Wed Jan 4 21:30:09 2023
edimax_rg21s-squashfs-factory.bin	08605a0174db754264b2b912d4137372b68706f425ff22bbc137bef8a2fe2888	6912.1 KB	Wed Jan 4 21:30:24 2023
edimax_rg21s-squashfs-sysupgrade.bin	eeb4def66e5b31ea6fb712cf78f84df4156d6fa5ca78f39540ea012635a472c7	6912.6 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1167ghbk2-s-initramfs-kernel.bin	bbc3acb79b0015a63f0088820873393a0716e544a19cff11597b5b72571b020b	5614.3 KB	Wed Jan 4 21:30:09 2023
elecom_wrc-1167ghbk2-s-squashfs-factory.bin	eb44c5e9ca48a3f22131c04ebc19c3a1def173b528b073481eee116871f55c70	6912.1 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1167ghbk2-s-squashfs-sysupgrade.bin	f6979b56e079bf3eea1e326e3a6d4c4ac28eafeb3b8d7655ec83386c09574251	6912.6 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1167gs2-b-initramfs-kernel.bin	d8cf7a39c0670dd78134bc39b941ed01b0a66310ec8acbd4ed839995403af1bf	5596.9 KB	Wed Jan 4 21:30:09 2023
elecom_wrc-1167gs2-b-squashfs-factory.bin	01bc8a29bd664b7f0acbac6ceea7a81462318a0de363ef45b850a9541a14b251	6912.1 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1167gs2-b-squashfs-sysupgrade.bin	c121b663c8c213023ce7dbabe0179bf44806cd3d431227571029e85884443a72	6912.6 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1167gst2-initramfs-kernel.bin	a678f9581b6508adb828e401c3dfe3e512716a58a94d4705670245166d1dabf7	5596.9 KB	Wed Jan 4 21:30:09 2023
elecom_wrc-1167gst2-squashfs-factory.bin	1d4d97e915cd8e97d9022125a54277399c125b2301ba1a058f01bc06c976b9e2	6912.1 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1167gst2-squashfs-sysupgrade.bin	1593d8edcf18d661f90641cab648d06a780ca04b5427560f4e2297fce6b448f0	6912.6 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1750gs-initramfs-kernel.bin	6aceb1f97634f6c6eaa03d89ead08fd887c95f5665fe5c5c1e3af2853a0acb6d	5596.9 KB	Wed Jan 4 21:30:10 2023
elecom_wrc-1750gs-squashfs-factory.bin	48c3685c25d4519492d8bd5fdeaaba55ec0efde60306160c1c7d2a6f5fca219c	6912.1 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1750gs-squashfs-sysupgrade.bin	08f2d63d6399bad3f1c09d122e31baed4288d82ed1ebf4a9b17f13381d49dc67	6912.6 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1750gst2-initramfs-kernel.bin	cafc0c46c5843ec81b8e597684dab16458b29c44c7dc298ec3043199a651fb45	5596.9 KB	Wed Jan 4 21:30:10 2023
elecom_wrc-1750gst2-squashfs-factory.bin	cc6b52761c182be25e67f7c417d45a3d63d4f737dc402afb2c27f30140a11d95	6912.1 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1750gst2-squashfs-sysupgrade.bin	38b2579b82cc01d6ff4308778213542ed0523aea8b83fc0fe445802269e6beba	6912.6 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1750gsv-initramfs-kernel.bin	50db5b8e4a8465aad71bd9e794032c36c8bd1faa76ec4c34dc0fd5fd645264d3	5596.9 KB	Wed Jan 4 21:30:10 2023
elecom_wrc-1750gsv-squashfs-factory.bin	b6ec4dd074daf261cb6e89a66021258b36d2f6cc9e205a0ddad191e600fb5ccf	6912.1 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1750gsv-squashfs-sysupgrade.bin	3a9d0db911961d0cf00c26e485e9e944150fd1c4c5430505e795cd905336a91e	6912.6 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1900gst-initramfs-kernel.bin	838d2d5c7dfbaa42bdd35d8d1624c91ad13a2e1e206b4f9acfe460be54d9c311	5596.9 KB	Wed Jan 4 21:30:10 2023
elecom_wrc-1900gst-squashfs-factory.bin	dfdae4d0822875cf0988a0c475e1a34b9dbad6f09e80b8c161157aab293898cb	6912.1 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-1900gst-squashfs-sysupgrade.bin	06073c518730294602133a0756117f27908d51199895bb805d60bb188e32cefd	6912.6 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-2533ghbk-i-initramfs-kernel.bin	2bfd93716531f044a420cd12a800e1c9081a08a2ffd01ec147ccb0bef7f5386b	5596.8 KB	Wed Jan 4 21:30:10 2023
elecom_wrc-2533ghbk-i-squashfs-factory.bin	4949a83babf2051e50c4a6e049673b9bc25a73f46ee5e4d408ca7a9a418322f5	6912.2 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-2533ghbk-i-squashfs-sysupgrade.bin	aff232081fe516b111b8c54a87a158163c6c693512ccb7864d497f0078537827	6912.6 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-2533gs2-initramfs-kernel.bin	6409a1da40585083ce58a17e40c812b46f42a5a86f835e2072609f79da465fb3	5596.9 KB	Wed Jan 4 21:30:10 2023
elecom_wrc-2533gs2-squashfs-factory.bin	41d5291031f1da9816a517735aa0f8e0b97160ae429cee8ad068493621bc8177	6912.1 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-2533gs2-squashfs-sysupgrade.bin	895cb0aa2e91ee91051edafd946a328dfdcafadf29683dcc29eb38d37ac1401a	6912.6 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-2533gst-initramfs-kernel.bin	c80ec9c51a0b3113498264acd4d835d7ac4e76d73d4219f9ca399eee72ebab54	5596.9 KB	Wed Jan 4 21:30:10 2023
elecom_wrc-2533gst-squashfs-factory.bin	df425b05786ea16629178742376beff17bc27003ef92a8bb28534f7cec9aa66e	6912.1 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-2533gst-squashfs-sysupgrade.bin	ffbcd1f117529e6de67ae9be3534db034b5a54ff7b3568eb47325e194b220a93	6912.6 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-2533gst2-initramfs-kernel.bin	6592643e6a34c9447ce80cef3e682ef6635b731abd1b26be3c2b4d65eba15db2	5596.9 KB	Wed Jan 4 21:30:10 2023
elecom_wrc-2533gst2-squashfs-factory.bin	d3558b30f41c3d30af7f28433c993d1c16b7169584c9b9f880f5d3bce0301347	6912.1 KB	Wed Jan 4 21:30:24 2023
elecom_wrc-2533gst2-squashfs-sysupgrade.bin	61cbe398412aafe44511bf6fbf34a9f4ba6fc9842cc3e0f865a3c120637d420a	6912.6 KB	Wed Jan 4 21:30:24 2023
firefly_firewrt-initramfs-kernel.bin	ade94ba72d43aa54150ed843eaf46f26ddd0edbcfd230f7671bec59f04561bfc	5614.2 KB	Wed Jan 4 21:30:10 2023
firefly_firewrt-squashfs-sysupgrade.bin	53d620f882061f85680926b1feb40cc86b9088771b21360bda52cec8f9970f5d	6400.6 KB	Wed Jan 4 21:30:24 2023
gehua_ghl-r-001-initramfs-kernel.bin	eaf7e940188bff79cefffda964be9210e7a09f559e72a157762bb6a969a19d76	5614.3 KB	Wed Jan 4 21:30:10 2023
gehua_ghl-r-001-squashfs-sysupgrade.bin	687eac835deb4a124271942acc3ac64402b3956ae2ad8fefcd8fb359ca26be09	6656.6 KB	Wed Jan 4 21:30:24 2023
glinet_gl-mt1300-initramfs-kernel.bin	e0a8e5ed8bd2e09cd695f4ae6736fbaaf85b1bff509d967ed76afc37c1b35a12	5614.3 KB	Wed Jan 4 21:30:10 2023
glinet_gl-mt1300-squashfs-sysupgrade.bin	a6645e9b748d62ee4eea2e3b7550cc16849c7cda2f82333cad741e1005c3e642	6912.6 KB	Wed Jan 4 21:30:24 2023
gnubee_gb-pc1-initramfs-kernel.bin	712a9494a717466ab9f1c539ccde1b5e4940bf049fbd7cfdc519c5f9bbcfb4d2	5596.6 KB	Wed Jan 4 21:30:10 2023
gnubee_gb-pc1-squashfs-sysupgrade.bin	df34e6c9e7216551b4a1326bc991102110b3a8a56c9cd7b6ab861c974f95ae43	5888.6 KB	Wed Jan 4 21:30:24 2023
gnubee_gb-pc2-initramfs-kernel.bin	a17f5b52d6285c904923815c2c4f4e8cd5236f5c4969c5f3aa20f1b468e1d417	5596.7 KB	Wed Jan 4 21:30:10 2023
gnubee_gb-pc2-squashfs-sysupgrade.bin	95a39e24bba6912fb91270e02d50fa51495da8abd922378ec724c348268dd28e	5888.6 KB	Wed Jan 4 21:30:24 2023
hilink_hlk-7621a-evb-initramfs-kernel.bin	c78f5a8d87d5cbd7dd1a1165dc74d20107490f5c68c87305f97c1d9087b9ccf2	5596.5 KB	Wed Jan 4 21:30:10 2023
hilink_hlk-7621a-evb-squashfs-sysupgrade.bin	36cb2851c241d848c14c93b7fd1d875a528d9eca057e4f3910bece8451dc482f	6400.6 KB	Wed Jan 4 21:30:24 2023
hiwifi_hc5962-initramfs-kernel.bin	1efb0375364195b342fef9927d42918631a49d99fe772cc3303e0424c1e9a898	5596.7 KB	Wed Jan 4 21:30:10 2023
hiwifi_hc5962-squashfs-factory.bin	fb399bff8124711f2bd721aa14a2ee8963e43fcb9a21e8fa4345b0a1f3c512bd	8960.0 KB	Wed Jan 4 21:30:24 2023
hiwifi_hc5962-squashfs-sysupgrade.bin	8d4570dcbea335108e9f512ee1686227f8fc20317c90ca825d5fc21436506fff	6450.6 KB	Wed Jan 4 21:30:24 2023
humax_e10-initramfs-kernel.bin	cb674f0947b55b1384dcbedad92dd6d2e334d6f55e6cc7a7545c9337f55ade95	5596.8 KB	Wed Jan 4 21:30:10 2023
humax_e10-squashfs-factory.bin	7e3aa18186d92f3d8a27eca0f3dcdc0409f5fe65e8db7a6193c2df5926c5f2d8	6875.5 KB	Wed Jan 4 21:30:24 2023
humax_e10-squashfs-sysupgrade.bin	5b3b9d6c488ddfcba73e3cdf363430409a5ef5a538549825c9834a6a960b7815	6912.6 KB	Wed Jan 4 21:30:24 2023
iodata_wn-ax1167gr-initramfs-factory.bin	681a823cb72f452066b15046ec58ffbd33a576841c16dd021f53fc949d28a3b8	5596.9 KB	Wed Jan 4 21:26:07 2023
iodata_wn-ax1167gr-initramfs-kernel.bin	ced7e36c5e06a1b0bb84617c87e1c898716744511e5afd777a7f7a3a284a766e	5596.8 KB	Wed Jan 4 21:30:10 2023
iodata_wn-ax1167gr-squashfs-sysupgrade.bin	3e37a831d7225a5429f23c94183b60c73c31bee7576b7b41f70b0ab2723b545e	6400.6 KB	Wed Jan 4 21:30:24 2023
iodata_wn-ax1167gr2-initramfs-kernel.bin	bf3f0062f3bef995f22e74ee6066dde54ef6f40f9f2774b04599f790beba0dd1	5693.9 KB	Wed Jan 4 21:30:11 2023
iodata_wn-ax1167gr2-squashfs-sysupgrade.bin	7bb6920ddf860229a64b978562073366525c7a2f7584990fc455a092a6f7ab1d	6790.6 KB	Wed Jan 4 21:30:24 2023
iodata_wn-ax2033gr-initramfs-kernel.bin	c483cb49e29f1b804dd538b4f83574ae450bd1d9bf3e2ec5d7cfca8172c61fef	5693.9 KB	Wed Jan 4 21:30:11 2023
iodata_wn-ax2033gr-squashfs-sysupgrade.bin	a00b62aae720a26e57f205c73f23dbfc9f4b44ed17d0591671736ec4d9373603	6860.6 KB	Wed Jan 4 21:30:24 2023
iodata_wn-dx1167r-initramfs-kernel.bin	3ed986c06ea7ac363b4dc0cda392768dd139f923eb5bcdc612221032ddda16ec	5693.9 KB	Wed Jan 4 21:30:11 2023
iodata_wn-dx1167r-squashfs-sysupgrade.bin	95f15dfb319d97d766cbb835b0b921e571a162ca3ac88134abf261923b2a5f1b	6790.6 KB	Wed Jan 4 21:30:24 2023
iodata_wn-dx1200gr-initramfs-kernel.bin	41e1e187bfad9117265f15aa84fa607618fc9973ea162499bd3a0afe7702a29d	5693.9 KB	Wed Jan 4 21:30:11 2023
iodata_wn-dx1200gr-squashfs-sysupgrade.bin	8c4ec62bf5630b1dd4d231d9b99e64428b8c6136d3f87dde92d271081e477b54	6740.6 KB	Wed Jan 4 21:30:24 2023
iodata_wn-dx2033gr-initramfs-kernel.bin	a7d1e0e0ada16d6fc66d77dea41267a4feaf45e1a4e1dd1e3ae236c8baf0259f	5693.9 KB	Wed Jan 4 21:30:11 2023
iodata_wn-dx2033gr-squashfs-sysupgrade.bin	35b4150cb2d8c0a88a671c1d6ec230fed8f11a91dedd2ae27eff7127bdf2b59a	6860.6 KB	Wed Jan 4 21:30:24 2023
iodata_wn-gx300gr-initramfs-kernel.bin	5aff2c4a3ae43db25f1924fface0df2ca5510667c429c0dcd89e90d6a2f7a7aa	5596.7 KB	Wed Jan 4 21:30:11 2023
iodata_wn-gx300gr-squashfs-sysupgrade.bin	371fdaae124b002c7a41e1efd85aa5b95d3b598bfb38f169d171b739607fb242	6400.6 KB	Wed Jan 4 21:30:24 2023
iodata_wnpr2600g-initramfs-kernel.bin	3e8e11153454723dc370d4cbb02f85d3d452b7d67e579d34e36b15e6c0601a28	5596.8 KB	Wed Jan 4 21:30:11 2023
iodata_wnpr2600g-squashfs-factory.bin	f217126945e906d7bb692f70f164fcfdcd5c9075cbc9a04500dc00f07a20d75e	6912.1 KB	Wed Jan 4 21:30:24 2023
iodata_wnpr2600g-squashfs-sysupgrade.bin	7a57c3b8dfa1c404f3b4b8783c76f993922dfda29e8542f820511c1270339c9d	6912.6 KB	Wed Jan 4 21:30:24 2023
iptime_a3002mesh-initramfs-kernel.bin	d39210d3dc7b67ac8cb1ea497277ae11ed15651b1d79ac2fe674f70736576b3d	5614.2 KB	Wed Jan 4 21:30:11 2023
iptime_a3002mesh-squashfs-sysupgrade.bin	d442d091f2338a8e2457d3b56b77d5c91c5a82200bb0369378a9b183426d8233	6912.6 KB	Wed Jan 4 21:30:24 2023
iptime_a3004ns-dual-initramfs-kernel.bin	0a2d6cc45bf54da65725427b86bf6e7d00579c8764f774767ace414e9f61f6c4	5596.7 KB	Wed Jan 4 21:30:11 2023
iptime_a3004ns-dual-squashfs-sysupgrade.bin	1626fc398c76a7f4c711e1b6ccf2076fe1481b2479e489049aa69c60ce711f2f	6400.6 KB	Wed Jan 4 21:30:24 2023
iptime_a3004t-initramfs-kernel.bin	aefb6801c1e02f054f3148811ca690642b628d4664d8f7087e26135378aafa54	5596.7 KB	Wed Jan 4 21:30:11 2023
iptime_a3004t-squashfs-sysupgrade.bin	b613a10177e7463b7ca1985b3ab71b11f14b5b64112a769de85bcddb8e72f92c	6890.6 KB	Wed Jan 4 21:30:24 2023
iptime_a6004ns-m-initramfs-kernel.bin	878f8ac5120694a8c198613f75ec6b647c282de53fe88d76b9c3bc02ea90df88	5614.3 KB	Wed Jan 4 21:30:11 2023
iptime_a6004ns-m-squashfs-sysupgrade.bin	bb058a0e5bef545e3fc8739fb4cbf209c19dad0a64304d5eec3671d98747a87c	6912.6 KB	Wed Jan 4 21:30:24 2023
iptime_a6ns-m-initramfs-kernel.bin	65cd5f33d9e854dee85639eebd75776acd5cf676ccd3ff0ceb5dc0159c82be88	5614.3 KB	Wed Jan 4 21:30:11 2023
iptime_a6ns-m-squashfs-sysupgrade.bin	152bfedea7e4e8750171d20b2348c5f14cc53b984af4489c8be132396965333f	6912.6 KB	Wed Jan 4 21:30:24 2023
iptime_a8004t-initramfs-kernel.bin	4a39c9ea2ce3f7462274b7ac01fb4b0c06f65f74f35d7da6710dfefabb0247c1	5614.3 KB	Wed Jan 4 21:30:11 2023
iptime_a8004t-squashfs-sysupgrade.bin	5896b601099f8c5c04806f467b8cd771c74223e0b824d33380cd9c04ddfd125c	6912.6 KB	Wed Jan 4 21:30:24 2023
iptime_ax2004m-initramfs-kernel.bin	32e526dfca37b846a34b3a4f0c92e26712943d29267851d006797d82fe41c11c	5601.2 KB	Wed Jan 4 21:30:11 2023
iptime_ax2004m-squashfs-recovery.bin	8bc1b3a95fd88977c2143bf7cf32bd2463fb62a09c39539d75e246db12ef1309	9344.1 KB	Wed Jan 4 21:30:24 2023
iptime_ax2004m-squashfs-sysupgrade.bin	8032469d2bf9332f1b2bb2562c0b11942d8694b7aa479acbba0bd9a989cf7444	6810.6 KB	Wed Jan 4 21:30:24 2023
iptime_t5004-initramfs-kernel.bin	8df6d04e8b347677b504d33b3ff63b4afb87ada0927b5eb12e5601742152bc27	5614.1 KB	Wed Jan 4 21:30:12 2023
iptime_t5004-squashfs-sysupgrade.bin	3c8e794bf94d4e4b7e05c934a2e075d514a27f5066dcb38fea08f4570d7faec2	5420.6 KB	Wed Jan 4 21:30:24 2023
jcg_jhr-ac876m-initramfs-kernel.bin	cf9a84a2a197ad2ea1339803d18ef1534065a436ec80aba4bc5a79bee2ab6f40	5614.3 KB	Wed Jan 4 21:30:12 2023
jcg_jhr-ac876m-squashfs-factory.bin	f7cf2163a1864333346885011cec99675a2d3c51ab8354f852a78524db48c6cd	6912.5 KB	Wed Jan 4 21:30:24 2023
jcg_jhr-ac876m-squashfs-sysupgrade.bin	5195819d46204f0b1ff6c3028c40964526ef54767309c45c79eb8e3f0a71ca74	6912.6 KB	Wed Jan 4 21:30:24 2023
jcg_q20-initramfs-kernel.bin	acd002922134797c13f1ea7b14e3891d236a3874bc45267c543e4e0fc4692f42	5614.3 KB	Wed Jan 4 21:30:12 2023
jcg_q20-squashfs-factory.bin	fc5e16ebdd80101ef80ec3baf88b394dcb4899233451493da3c8fa904d26b2ed	9216.0 KB	Wed Jan 4 21:30:24 2023
jcg_q20-squashfs-sysupgrade.bin	a95b670dda5da68864146f5330cbc0b369192aad8c3a396be342c4e793f9e7e1	6700.5 KB	Wed Jan 4 21:30:24 2023
jcg_y2-initramfs-kernel.bin	c926a43cea475d3a75ea85cfe387ad9d70ccc82997c7948861f985bafcca5a77	5596.6 KB	Wed Jan 4 21:30:12 2023
jcg_y2-squashfs-factory.bin	09c4e100f6dc8c86334c0c5ed52ab736139418fb0a9acccf71c4f6e1ece324ec	6912.5 KB	Wed Jan 4 21:30:24 2023
jcg_y2-squashfs-sysupgrade.bin	11bfd2ec3a88a93835afdfa06bd7d1f99509eb3c80fbf06844e7ca8088a296b6	6912.5 KB	Wed Jan 4 21:30:24 2023
lenovo_newifi-d1-initramfs-kernel.bin	ce8a4bce364043648b2528e63afbe487222b46002889b874e3fff0499132afcd	5596.8 KB	Wed Jan 4 21:30:12 2023
lenovo_newifi-d1-squashfs-sysupgrade.bin	e68500cee9d2487f2a2c5477fd402ef86407de0b61fde60e5fff883ab1ff60fd	6656.6 KB	Wed Jan 4 21:30:24 2023
linksys_e5600-initramfs-kernel.bin	db9b610d60698120778c4a4073152a8c241c28fd55a5fe19f1303012c592fa63	5596.7 KB	Wed Jan 4 21:30:12 2023
linksys_e5600-squashfs-factory.bin	8d4984b2c3e570069fca22631786265c19b6db9e5fe6618fcfaca8f86690592a	9216.0 KB	Wed Jan 4 21:30:24 2023
linksys_e5600-squashfs-sysupgrade.bin	d58368848e64486071ec8ee97b02ce87cef0307cf5de363749b2551d8ac559f9	6720.6 KB	Wed Jan 4 21:30:24 2023
linksys_ea6350-v4-initramfs-kernel.bin	44bae00ca1a1476286e97f04518780fe51f904b2adf29a57341db086328d1aa4	5596.7 KB	Wed Jan 4 21:30:12 2023
linksys_ea6350-v4-squashfs-factory.bin	35ba14ee130dc7ea185f419b6bcb49128bb1600a6945652b34d8be54ac535b15	9984.2 KB	Wed Jan 4 21:30:24 2023
linksys_ea6350-v4-squashfs-sysupgrade.bin	7a63a57e8c492b978477373a4bd3dbeff680e174a9afb7bbd316bae7783d50c1	7390.6 KB	Wed Jan 4 21:30:24 2023
linksys_ea7300-v1-initramfs-kernel.bin	04350a2efed7c7cb7ad4c398a80b70c742b5a6d03db1add6e6fe53b7a5b4db56	5596.7 KB	Wed Jan 4 21:30:12 2023
linksys_ea7300-v1-squashfs-factory.bin	55b3024010e96e400974d7bde2ce7f40f56aeb5dc4e434a75ca0d001f38be745	9472.2 KB	Wed Jan 4 21:30:24 2023
linksys_ea7300-v1-squashfs-sysupgrade.bin	87bfed9157ca51ea18b522b7409bc8df5975940d75f20b99aaac9f997f3f236c	6900.6 KB	Wed Jan 4 21:30:24 2023
linksys_ea7300-v2-initramfs-kernel.bin	fb9b1a77086f4989bcf485ec84fc848c297b0292c74166c5af9635516c340de9	5596.7 KB	Wed Jan 4 21:30:12 2023
linksys_ea7300-v2-squashfs-factory.bin	a40fb624abf849a03e6c3730a91eb9be882252fc3818860bc63452a40efcca83	9472.2 KB	Wed Jan 4 21:30:24 2023
linksys_ea7300-v2-squashfs-sysupgrade.bin	b981f9aafeed992fd5e3a2ecbd1d4d720bba04fab6970b64182926069bcce124	6970.6 KB	Wed Jan 4 21:30:24 2023
linksys_ea7500-v2-initramfs-kernel.bin	4c49b1fe1476c80fcddf4e021eba9d74b187723cb7d37cf5f7651ec187e26ce0	5596.7 KB	Wed Jan 4 21:30:13 2023
linksys_ea7500-v2-squashfs-factory.bin	9589f4ec4d9d0cff3d0c5784bc3a3ee244d74bc9139ef11d0f1caebd1205f9c4	9472.2 KB	Wed Jan 4 21:30:24 2023
linksys_ea7500-v2-squashfs-sysupgrade.bin	c970913a70cf20ad769f37fb2b71d0984f0085a579816f0199c8c9368764d036	6900.6 KB	Wed Jan 4 21:30:24 2023
linksys_ea8100-v1-initramfs-kernel.bin	22a11af761e96b09ed9a70ababd6e57eab864e6930c0ee7b8a1a4635d43dae35	5596.7 KB	Wed Jan 4 21:30:13 2023
linksys_ea8100-v1-squashfs-factory.bin	2051c359bab925813b4e8c6567e6e21cc4148e1d9b8af25f49d26fb34016984c	9472.2 KB	Wed Jan 4 21:30:24 2023
linksys_ea8100-v1-squashfs-sysupgrade.bin	2ddfd901a8c41f503a5d7409f5b05807aeeb606005c123a9555a12e916a63edf	6900.6 KB	Wed Jan 4 21:30:24 2023
linksys_ea8100-v2-initramfs-kernel.bin	4f3a301dcab42384f1c4897f7df299b3c0ab01ee4d9ad7c5756f34a1d1359835	5596.7 KB	Wed Jan 4 21:30:13 2023
linksys_ea8100-v2-squashfs-factory.bin	e05ea32b3a26d3ecbea01b87cda1da6b52a9c91ecc22faba4287083b1ec28c66	9472.2 KB	Wed Jan 4 21:30:24 2023
linksys_ea8100-v2-squashfs-sysupgrade.bin	5eed4110887bb9eb6605b87e2ae45e5eeb5b807de75907edd95ea3119486827d	6900.6 KB	Wed Jan 4 21:30:24 2023
linksys_re6500-initramfs-kernel.bin	159c52c8bb7b2b4002ebf7693155a8fee5f5a906d2beec80d8bd6a7600818f2f	5596.7 KB	Wed Jan 4 21:30:13 2023
linksys_re6500-squashfs-sysupgrade.bin	45cf557b23b0629d8fadf1696e25af813229212da0a7cf873747cacff8d364fd	6400.6 KB	Wed Jan 4 21:30:25 2023
mediatek_ap-mt7621a-v60-initramfs-kernel.bin	1e8e96ea0b770c3708315a52dd2efb43f6f963e19ecb3e299f1d28a3c81928fb	5614.3 KB	Wed Jan 4 21:30:13 2023
mediatek_ap-mt7621a-v60-squashfs-sysupgrade.bin	ffbdf85db75067272c14d20a0388788e9ade578ac8efd2c5353488804fb65ccd	5888.6 KB	Wed Jan 4 21:30:25 2023
mediatek_mt7621-eval-board-initramfs-kernel.bin	fea8c1d15fd6ecd6beb9300fae9a4d421b3f2f5eda89042cce65725e4434377e	5613.9 KB	Wed Jan 4 21:30:13 2023
mediatek_mt7621-eval-board-squashfs-sysupgrade.bin	c2665ba17da6ac7c1931c5e9c25519f8edc9bbe6c94c7b2aefbfcf5562c13335	5440.6 KB	Wed Jan 4 21:30:25 2023
mikrotik_routerboard-750gr3-initramfs-kernel.bin	8c72f8830eae7d7260dae8a24d108c2a55c4c9850764583efa2581201b918173	5615.1 KB	Wed Jan 4 21:30:13 2023
mikrotik_routerboard-750gr3-squashfs-sysupgrade.bin	dd1c494616606d2b022e251f0909611c89600942eef379ec11dd454100e51cff	5696.6 KB	Wed Jan 4 21:30:25 2023
mikrotik_routerboard-760igs-initramfs-kernel.bin	e4781637e05c149a1417122e657fa6734760aa8e0cc468f2af8894352a692a07	5615.5 KB	Wed Jan 4 21:30:14 2023
mikrotik_routerboard-760igs-squashfs-sysupgrade.bin	7ac0b781fc9899e50d3a6d1a2e0b45b3e7504b26b3807991fdaf9ca86d46a96e	5696.6 KB	Wed Jan 4 21:30:25 2023
mikrotik_routerboard-m11g-initramfs-kernel.bin	dadf446aa6121fd46e188bb80381f4e509ac5f74fdb2707a0fb3f9667d6496a3	5615.3 KB	Wed Jan 4 21:30:14 2023
mikrotik_routerboard-m11g-squashfs-sysupgrade.bin	ae3025fa5b214cf0699b363c0c69cc4e078a9328ede80d86e182c0f57ac3e32a	5568.6 KB	Wed Jan 4 21:30:25 2023
mikrotik_routerboard-m33g-initramfs-kernel.bin	d4f87b8e4c860f4654429387dff00124d6aa5acd9025fc687ac75a4595d5d9dd	5615.6 KB	Wed Jan 4 21:30:14 2023
mikrotik_routerboard-m33g-squashfs-sysupgrade.bin	af45246974247955bfc4c7947be31c41f184e5171189031219fb922fb77a6fc4	5568.6 KB	Wed Jan 4 21:30:25 2023
mqmaker_witi-initramfs-kernel.bin	6d8e9d6629a9be38ef5bac7e394c10efe365bebfb5fa741a1f5e9d6f039c8d01	5596.6 KB	Wed Jan 4 21:30:14 2023
mqmaker_witi-squashfs-sysupgrade.bin	d6b6d56ce399e9a63b43341594f1e44c50be51629d250985998ac2d6293217a8	6656.7 KB	Wed Jan 4 21:30:25 2023
mtc_wr1201-initramfs-kernel.bin	a0e278a17bc2fc5748d63fb5601a1c81e77e0aaa439bb8aa39bfffef68829b37	5614.3 KB	Wed Jan 4 21:30:14 2023
mtc_wr1201-squashfs-sysupgrade.bin	6e89bda17193b7cfa3fd79d5ea769e33c25296b4d200a8436fe646a8ab621902	6656.6 KB	Wed Jan 4 21:30:25 2023
mts_wg430223-initramfs-kernel.bin	17a90c59aaa7524be1bd8fef1cba47f8d8181e82ba1d4e7a93ba4421baf0aa64	5596.8 KB	Wed Jan 4 21:30:14 2023
mts_wg430223-squashfs-factory.trx	6d6cdf6890d6e917bf94061b948118970a5374c42b796151cc88f9399f4d2705	9600.0 KB	Wed Jan 4 21:30:25 2023
mts_wg430223-squashfs-sysupgrade.bin	f829f34d084187194e5a5b52d9c01ba8c40bea03e02dd9a90b831d161d0461ad	8490.6 KB	Wed Jan 4 21:30:25 2023
netgear_ex6150-initramfs-kernel.bin	c980676bf36a3531ee06d62656f7f1507e71a6f4bce3b000336bbb94a79e1396	5596.9 KB	Wed Jan 4 21:30:14 2023
netgear_ex6150-squashfs-factory.chk	10951e70153bcd973ab49035677f6303a4323735fb16e714f5c7dca9ac477fa1	6400.1 KB	Wed Jan 4 21:30:25 2023
netgear_ex6150-squashfs-sysupgrade.bin	18e02f8fb33c3556a9f590bc3517e01cbb46d8506c1c82b2d7a9a58a4f604a65	6400.6 KB	Wed Jan 4 21:30:25 2023
netgear_r6220-initramfs-kernel.bin	9fecb8e37d187d09ebade8d9ef179a208a60ae169c77fb8bf2b36f1942a32abd	5596.8 KB	Wed Jan 4 21:30:14 2023
netgear_r6220-squashfs-factory.img	bc9232c2c426830eb0b9c36b811e28189245ce6a2a64630e85d6b4e084a03d34	6453.5 KB	Wed Jan 4 21:30:25 2023
netgear_r6220-squashfs-kernel.bin	9b6d15e8d3019188659dfce9381fadd644df213e80137ea9344eccbe9e6f1b85	2632.7 KB	Wed Jan 4 21:30:25 2023
netgear_r6220-squashfs-rootfs.bin	dc0bcda05b154c2b8b1d85cbde55be9bb2abffcc172ca69477d21aae7c098b79	4864.0 KB	Wed Jan 4 21:30:25 2023
netgear_r6220-squashfs-sysupgrade.bin	2caccb8c3b505aa330d8f05251ad425f6e12125a8308529c79428aad84e458c7	6450.6 KB	Wed Jan 4 21:30:25 2023
netgear_r6260-initramfs-kernel.bin	0c7e8a1ad6493ab5455a6aca86cea9673e5516b0043e66ff6fb2cb2b5716b1ff	5596.8 KB	Wed Jan 4 21:30:15 2023
netgear_r6260-squashfs-factory.img	bdc8fcaefa593285190a39d81a1a2097e0c509ff1659f1a2cb8416b66d303288	6963.0 KB	Wed Jan 4 21:30:25 2023
netgear_r6260-squashfs-kernel.bin	24112915d90810297466a2d882f8a5847467be4b365ff3b058775b72d2ffdd16	2632.7 KB	Wed Jan 4 21:30:25 2023
netgear_r6260-squashfs-rootfs.bin	c4411df3e6258f0067fa4404576fc93836fb848ae0ab4548c9e605691c2dfe79	5376.0 KB	Wed Jan 4 21:30:25 2023
netgear_r6260-squashfs-sysupgrade.bin	9403bda2921086a2fb852550f0c4b5aa7f0a6c02c2b28494d52b4c0d411ce828	6960.6 KB	Wed Jan 4 21:30:25 2023
netgear_r6350-initramfs-kernel.bin	9a4773951e8b3e583957b2788d28b409fb6c083ea369207f65b512c19ba3d55e	5596.8 KB	Wed Jan 4 21:30:15 2023
netgear_r6350-squashfs-factory.img	06e3fd16b4dd41653d8c96be71dcb5c1983b527d28c3ead85091f9b7e508ca9c	6963.0 KB	Wed Jan 4 21:30:25 2023
netgear_r6350-squashfs-kernel.bin	b501e59484a8704a3e226ea4c955ab9bcf99d49ecb4ad319a1b94e736c5b0f21	2632.7 KB	Wed Jan 4 21:30:25 2023
netgear_r6350-squashfs-rootfs.bin	c4411df3e6258f0067fa4404576fc93836fb848ae0ab4548c9e605691c2dfe79	5376.0 KB	Wed Jan 4 21:30:25 2023
netgear_r6350-squashfs-sysupgrade.bin	1de45064dc7f010ffd394485994d640d47b48306dbe976bfcebf4c0035beb0cb	6960.6 KB	Wed Jan 4 21:30:25 2023
netgear_r6700-v2-initramfs-kernel.bin	e640658e70c1095dc06e5bd5c1ee37eef625e23fd98599f51ad5415b38036699	5596.9 KB	Wed Jan 4 21:30:15 2023
netgear_r6700-v2-squashfs-factory.img	52e1cc8ebfd8a806a182bb20349536ce1eb63ecd5f066b37ba493af3a9f2baa5	6963.0 KB	Wed Jan 4 21:30:25 2023
netgear_r6700-v2-squashfs-kernel.bin	9e752f158da36ef1b9a75e2faa00bc8b3efe528f7d8631a9ee4ab33592d3a56e	2632.8 KB	Wed Jan 4 21:30:25 2023
netgear_r6700-v2-squashfs-rootfs.bin	c4411df3e6258f0067fa4404576fc93836fb848ae0ab4548c9e605691c2dfe79	5376.0 KB	Wed Jan 4 21:30:25 2023
netgear_r6700-v2-squashfs-sysupgrade.bin	096d9e8ab02abcb51d155eb36937d82c1b7fbb72c62acf6e0bbe407cbf68f3f0	6960.6 KB	Wed Jan 4 21:30:25 2023
netgear_r6800-initramfs-kernel.bin	b487f6f8210db168662e5316afd5b410d5a6272abe3c1078d6a6b81eb135b441	5596.9 KB	Wed Jan 4 21:30:15 2023
netgear_r6800-squashfs-factory.img	47b2d084dea61f8cd920e037a62a6e6db752975882576c2283c4a60097fd542b	6963.0 KB	Wed Jan 4 21:30:25 2023
netgear_r6800-squashfs-kernel.bin	28476aa774cdca82810eb30d76b47588f769a2169a1a6ca7c700289ed0005fc8	2632.8 KB	Wed Jan 4 21:30:25 2023
netgear_r6800-squashfs-rootfs.bin	c4411df3e6258f0067fa4404576fc93836fb848ae0ab4548c9e605691c2dfe79	5376.0 KB	Wed Jan 4 21:30:25 2023
netgear_r6800-squashfs-sysupgrade.bin	84b4a368a6a396011dcf0508625e71a459c01df30cbfe80002ef4047fcf2c299	6960.6 KB	Wed Jan 4 21:30:25 2023
netgear_r6850-initramfs-kernel.bin	7bafd4b3a25b9c81f2c09fd9de1749645e97965d746d62d391ea6bae7f2d3334	5596.8 KB	Wed Jan 4 21:30:16 2023
netgear_r6850-squashfs-factory.img	607765deae865748afe46d73f92f7b3387a834816b49a55c3cbe534daa0cd80c	6963.0 KB	Wed Jan 4 21:30:25 2023
netgear_r6850-squashfs-kernel.bin	cec6c966f4c16fba66b90e9a700393c97a81b2303fb0709b674d5a37fa15275c	2632.7 KB	Wed Jan 4 21:30:25 2023
netgear_r6850-squashfs-rootfs.bin	c4411df3e6258f0067fa4404576fc93836fb848ae0ab4548c9e605691c2dfe79	5376.0 KB	Wed Jan 4 21:30:25 2023
netgear_r6850-squashfs-sysupgrade.bin	2b3865330f6c9b0f75c53c4a4b913daac2a1dfb0267f134c7a8de6360f73f993	6960.6 KB	Wed Jan 4 21:30:25 2023
netgear_r6900-v2-initramfs-kernel.bin	baa0eedb95ed02ae2837dac709e4110b88074c98d7a90acec11bf253d9da19fc	5596.9 KB	Wed Jan 4 21:30:17 2023
netgear_r6900-v2-squashfs-factory.img	5500e3e56df4989ed2f3e8713b49cae2b75a068dd9950c3bd55e66a0e5c49fd4	6963.0 KB	Wed Jan 4 21:30:25 2023
netgear_r6900-v2-squashfs-kernel.bin	8bffcb12f8937f4548764c1b1261ea532df7f8d9460bcb9a5658cae19133c982	2632.8 KB	Wed Jan 4 21:30:25 2023
netgear_r6900-v2-squashfs-rootfs.bin	c4411df3e6258f0067fa4404576fc93836fb848ae0ab4548c9e605691c2dfe79	5376.0 KB	Wed Jan 4 21:30:25 2023
netgear_r6900-v2-squashfs-sysupgrade.bin	1d6e856444e760ad0999e579ef0fdb684104fbc8d0e164ed2b79a36309137c44	6960.6 KB	Wed Jan 4 21:30:25 2023
netgear_r7200-initramfs-kernel.bin	01ae227d4eea3a3002d81df0deee934ca7a949e5b6c57d59923dfa9eaa78104c	5596.9 KB	Wed Jan 4 21:30:18 2023
netgear_r7200-squashfs-factory.img	049fb623c814f593e0bea3422d60125bfcfc347b259bdd58e71ace214d42f823	6963.0 KB	Wed Jan 4 21:30:25 2023
netgear_r7200-squashfs-kernel.bin	9fc9ff43663bd97fc4f3604dc8bcb7110066b03a2f8a74b8a574d0316ab0d979	2632.8 KB	Wed Jan 4 21:30:25 2023
netgear_r7200-squashfs-rootfs.bin	c4411df3e6258f0067fa4404576fc93836fb848ae0ab4548c9e605691c2dfe79	5376.0 KB	Wed Jan 4 21:30:25 2023
netgear_r7200-squashfs-sysupgrade.bin	a519ef01421433633e0339256d1ba577df190436b0932a2dded747ad4b2d7dbe	6960.6 KB	Wed Jan 4 21:30:25 2023
netgear_r7450-initramfs-kernel.bin	3ce1ccda8cd3f77d54e34a6717e0f4ba24142bc1fa1fd0c35a411d1383716496	5596.9 KB	Wed Jan 4 21:30:18 2023
netgear_r7450-squashfs-factory.img	7d1c4d8dabcbfa247f5c39b0c411e829d64becffc1b32c138fbd91ad75bc343a	6963.0 KB	Wed Jan 4 21:30:25 2023
netgear_r7450-squashfs-kernel.bin	9781a5beb7ab6457c88151f02ca9b3ce7b1ee72ce67dd00a1312501293e2e970	2632.8 KB	Wed Jan 4 21:30:25 2023
netgear_r7450-squashfs-rootfs.bin	c4411df3e6258f0067fa4404576fc93836fb848ae0ab4548c9e605691c2dfe79	5376.0 KB	Wed Jan 4 21:30:25 2023
netgear_r7450-squashfs-sysupgrade.bin	6ea22a2056c7d23aa1df3f3295597e6d120d84c502cd7fcb38735f7b741dd3da	6960.6 KB	Wed Jan 4 21:30:25 2023
netgear_wac104-initramfs-kernel.bin	68fa35d3749f4d9019dcc1cc82bdd342342b19ca68ff278f4739280a2ea2357c	5596.7 KB	Wed Jan 4 21:30:18 2023
netgear_wac104-squashfs-factory.img	cc1f4b0449f7e7a54e3adcbdcceb5f68a7f141c2297b93024dfd3c3fa60501de	6453.5 KB	Wed Jan 4 21:30:25 2023
netgear_wac104-squashfs-kernel.bin	a36224c86c7ac758f5148e16616fd88d670cc5fb4004485491b6924b9f71b22a	2632.6 KB	Wed Jan 4 21:30:25 2023
netgear_wac104-squashfs-rootfs.bin	dc0bcda05b154c2b8b1d85cbde55be9bb2abffcc172ca69477d21aae7c098b79	4864.0 KB	Wed Jan 4 21:30:25 2023
netgear_wac104-squashfs-sysupgrade.bin	5f77f269a80ceff7d49e91b73c9d58f3901a1a3a6ec0aa8f280f84d5887bfb31	6450.6 KB	Wed Jan 4 21:30:25 2023
netgear_wac124-initramfs-kernel.bin	35bae118961cae9dc4b490f32c692644e3cd04daf7e1a04c782a6c29c35e065c	5596.8 KB	Wed Jan 4 21:30:19 2023
netgear_wac124-squashfs-factory.img	f99a23d44a3483fc078d4a7fdce352505d391d567d9861f397264ae35ba19963	6963.0 KB	Wed Jan 4 21:30:25 2023
netgear_wac124-squashfs-kernel.bin	a795036e8a7405a55a7d8298fa9e0725ef5bcab9c5ead44a48b42e779ffca5e2	2632.7 KB	Wed Jan 4 21:30:25 2023
netgear_wac124-squashfs-rootfs.bin	c4411df3e6258f0067fa4404576fc93836fb848ae0ab4548c9e605691c2dfe79	5376.0 KB	Wed Jan 4 21:30:25 2023
netgear_wac124-squashfs-sysupgrade.bin	f7e6fcae97c6f33250f7feb0a66d31551bcbe4a724ad6433b134f63ed0d3b9eb	6960.6 KB	Wed Jan 4 21:30:25 2023
netgear_wax202-initramfs-kernel.bin	7d36ed52215a8d0c4b5ad63658e01bcc6828c6eeab139bb278f6584d750d21da	5602.8 KB	Wed Jan 4 21:30:19 2023
netgear_wax202-squashfs-factory.img	ef7a09e86d9509a57f259fc316ed3b3c90377b03c6cbf186e9134f51084c335c	9216.5 KB	Wed Jan 4 21:30:25 2023
netgear_wax202-squashfs-sysupgrade.bin	dc314c06b12ddfe02e32441cd1715f4a5f5a38293eeaa13a466d3cea2319ec52	6680.6 KB	Wed Jan 4 21:30:25 2023
netgear_wndr3700-v5-initramfs-kernel.bin	efc2667fde685f3951bc8749fa06ef1d17a0808eea565c9113827c8a8425247a	5596.8 KB	Wed Jan 4 21:30:19 2023
netgear_wndr3700-v5-squashfs-factory.img	e90dff68fedf1d643233241696fca492d4b49872656e117431887a44c45850ce	6441.0 KB	Wed Jan 4 21:30:25 2023
netgear_wndr3700-v5-squashfs-sysupgrade.bin	43e7c42537b43a467160e9e7e77c64c6185cad60e4b77f8b75f1079de28c8f22	6528.6 KB	Wed Jan 4 21:30:25 2023
netis_wf2881-initramfs-kernel.bin	d5372aa3ea95e9cfdb00b1cd1ea29afa6bf68cb3249bab2545976a8a32d9279a	5596.7 KB	Wed Jan 4 21:30:20 2023
netis_wf2881-squashfs-factory.bin	1523e223780de7a73e626fd8c7dbe203b6096331a5124c4b8ed74ae0131e7968	8960.0 KB	Wed Jan 4 21:30:25 2023
netis_wf2881-squashfs-sysupgrade.bin	3eb0543616cffba5ff2925b3e282cdb18ae3bc8f90ad09847a14eafd5a4066d7	6380.6 KB	Wed Jan 4 21:30:25 2023
oraybox_x3a-initramfs-kernel.bin	9c79328f0d603d23d342941694fe71dac3380e5fc3ae88982107bf76596a624e	5596.7 KB	Wed Jan 4 21:30:20 2023
oraybox_x3a-squashfs-sysupgrade.bin	7c1fb8aecbb8281fe79814cba584d4a6e4954a1f607f1980ec72d5cbf132c3c5
phicomm_k2p-initramfs-kernel.bin	ea6146f906c7d382c233162652b6f6c2ceefebb863bac39cf89d6e0433162638	5614.2 KB	Wed Jan 4 21:30:20 2023
phicomm_k2p-squashfs-sysupgrade.bin	5f2cd97be5be61e8591c3c6c5f9ec56d5141f7a4ab947eb91863eed7b43d71df	6912.6 KB	Wed Jan 4 21:30:25 2023
planex_vr500-initramfs-kernel.bin	4929791c18e1c5b329f274c1d1e3e523f27cf63ba1c39725205a5a3ab051ba56	5596.6 KB	Wed Jan 4 21:30:20 2023
planex_vr500-squashfs-sysupgrade.bin	110b8e15ae7a22e8fa2aedb5b38b0753f054f6246a9a54b1c870f22d80b584dc	5632.6 KB	Wed Jan 4 21:30:25 2023
raisecom_msg1500-x-00-initramfs-kernel.bin	73f82ce30624766273d222072904bb7c3665ef372be352f54271c5504350dc6a	5596.7 KB	Wed Jan 4 21:30:20 2023
raisecom_msg1500-x-00-squashfs-sysupgrade.bin	f64bf18e2abb884cea52d5d97b2db624b82b8a88ea84c7eead06cd8c3def8564	6900.6 KB	Wed Jan 4 21:30:25 2023
renkforce_ws-wn530hp3-a-initramfs-kernel.bin	07d156756def8fab335c4a6bae1eb532ed83c8b8e0881521f0998eda70a8b0df	5614.3 KB	Wed Jan 4 21:30:20 2023
renkforce_ws-wn530hp3-a-squashfs-sysupgrade.bin	8a07710ce1fb0d99e83b6bc6c2925f30946442504a44072394f5e650d253331f	6757.3 KB	Wed Jan 4 21:30:25 2023
samknows_whitebox-v8-initramfs-kernel.bin	92b7f0e6b67b7788ddfcdec3e38ee38ad1f8310b11d1284612b4dab89bc31d85	5596.7 KB	Wed Jan 4 21:30:20 2023
samknows_whitebox-v8-squashfs-sysupgrade.bin	23dbe1a494a46ced3e9f867635b5409c8785543497f2c0baeb6d1e32d3f9a857	6656.6 KB	Wed Jan 4 21:30:25 2023
sercomm_na502-initramfs-kernel.bin	1e9077949133732fdd8a30dcc9eeac3af54b66ae86c00923cb3434ba662d49ed	5596.9 KB	Wed Jan 4 21:30:20 2023
sercomm_na502-squashfs-sysupgrade.bin	722b4a705e8edaba3b6f8265b65eddb90a70dea53da464bfe278862e4382d86c	6450.3 KB	Wed Jan 4 21:30:25 2023
sercomm_na502s-initramfs-kernel.bin	41b83f262eaecf6aef38c514386d6ea7fcd29be48c197d4fc15406137ddb534d	5597.1 KB	Wed Jan 4 21:30:20 2023
sercomm_na502s-squashfs-sysupgrade.bin	1ea8046fd95468015985dc25f7def3284b99a515d77d0a5df97803cb7600f4d4	6460.3 KB	Wed Jan 4 21:30:25 2023
storylink_sap-g3200u3-initramfs-kernel.bin	22a4417472fd5bf69c2bc3d5391f1534a945d29f5c14241c912125cd926fb3ef	5614.2 KB	Wed Jan 4 21:30:20 2023
storylink_sap-g3200u3-squashfs-sysupgrade.bin	b7927a322f506f42e69eb846954b33a43c100e2f52befe53ade8bc4900984f62	6400.6 KB	Wed Jan 4 21:30:25 2023
telco-electronics_x1-initramfs-kernel.bin	60fcd94374b0a13dc61f4e46d231ddaf394d86b9ded9c07235af7a0bf0f3dd8c	5614.4 KB	Wed Jan 4 21:30:20 2023
telco-electronics_x1-squashfs-sysupgrade.bin	ae9d820e723741cf58ac5644c31f25e39e894471fde9b4de8d679c1f592fe566	6656.6 KB	Wed Jan 4 21:30:25 2023
tenbay_t-mb5eu-v01-initramfs-kernel.bin	cd6e4b17a62519cf5f90a81406a7234b783fdc64d70bcb34a720c127f13e01e0	5601.7 KB	Wed Jan 4 21:30:20 2023
tenbay_t-mb5eu-v01-squashfs-sysupgrade.bin	45b63b3e97b95c9a72bb3996239d5787586f1e0be4407222cc40cd7eb6e6deb9	6912.6 KB	Wed Jan 4 21:30:25 2023
thunder_timecloud-initramfs-kernel.bin	87a310790eca08ba989393cbe8d98a900d7e69060884676f98a9f835b4447cd2	5596.6 KB	Wed Jan 4 21:30:20 2023
thunder_timecloud-squashfs-sysupgrade.bin	27c854f4a91435e41c88f2f5d4b108c4c61be848e12c1cb57bee2bceb47aaa9a	5632.6 KB	Wed Jan 4 21:30:25 2023
totolink_a7000r-initramfs-kernel.bin	430dababee91f9a2815a815bed34a3665166c3d35918a5f867e6768dc36fed32	5614.2 KB	Wed Jan 4 21:30:20 2023
totolink_a7000r-squashfs-sysupgrade.bin	c887bd213a89f1c3da412dee284f860bd4fadb0a13bb33f121be717f3077e4cb	6912.6 KB	Wed Jan 4 21:30:25 2023
totolink_x5000r-initramfs-kernel.bin	300616ded6904d5954125a1e795ce4f537cace7ac3bc23cccc47f61917481983	5614.2 KB	Wed Jan 4 21:30:20 2023
totolink_x5000r-squashfs-sysupgrade.bin	80e343aa867073a9caaad356c07d177fccb73134a997b7a405c87923c4a917b7	6912.6 KB	Wed Jan 4 21:30:25 2023
tplink_archer-a6-v3-initramfs-kernel.bin	8b41cf8bdb7785d8290db7eb53abe7dbf956ead75a50c49a42b79aba26fdaba9	5614.4 KB	Wed Jan 4 21:30:20 2023
tplink_archer-a6-v3-squashfs-factory.bin	d501a3237074ec14f91816b8d2d002e438bf7bd18207f35b913e27dd35783b30	6754.4 KB	Wed Jan 4 21:30:25 2023
tplink_archer-a6-v3-squashfs-sysupgrade.bin	ee7e0e101aa2336cd27992e4230e48d7fd712d9f6cb2014e2f0711e6abd99179	6720.6 KB	Wed Jan 4 21:30:25 2023
tplink_archer-c6-v3-initramfs-kernel.bin	3e6d97aa4b224a1d974b811746e4f016b041ae181ecdd0a1ad12828512febe12	5614.4 KB	Wed Jan 4 21:30:20 2023
tplink_archer-c6-v3-squashfs-factory.bin	59f39bbf695acde6a5deb491c82c843e88e3ceb698218d8867ae5b7927073771	6754.5 KB	Wed Jan 4 21:30:25 2023
tplink_archer-c6-v3-squashfs-sysupgrade.bin	2cdc16493a5e8f4def5910bff75fff2a056c88d410ba39fbaab49239ea63864d	6720.6 KB	Wed Jan 4 21:30:25 2023
tplink_archer-c6u-v1-initramfs-kernel.bin	36e68b2e725b2c0e8eb42074156f8fcf7d74856d59a391a8dcfb3e17d45c7df1	5614.5 KB	Wed Jan 4 21:30:21 2023
tplink_archer-c6u-v1-squashfs-factory.bin	c6616d044019297fda47f403a47dac947678ac5d2bcba6cdba328019f57f980a	6882.3 KB	Wed Jan 4 21:30:25 2023
tplink_archer-c6u-v1-squashfs-sysupgrade.bin	50a2931916b093548b41a32ea589d4f16b3a1235f5548ba8da176dce0c9a6ce3	6912.6 KB	Wed Jan 4 21:30:25 2023
tplink_eap235-wall-v1-initramfs-kernel.bin	1956ff1f222ab2dcf59ce034140876fe4f5fc51239f0d1976bd466d9531dacf0	5614.8 KB	Wed Jan 4 21:30:21 2023
tplink_eap235-wall-v1-squashfs-factory.bin	6ece257bb1bb1a11c0dee60d4a9dcd27c78cc82d9b2f1cbea4d2b9e817d198e1	6754.7 KB	Wed Jan 4 21:30:25 2023
tplink_eap235-wall-v1-squashfs-sysupgrade.bin	f61b8745b5efb9a9bc0344f2a2ee18e35a0b4b1ceb7f5d9b6123a9eafca37284	6720.6 KB	Wed Jan 4 21:30:25 2023
tplink_eap615-wall-v1-initramfs-kernel.bin	f5b984a94b50069bdba1fb5539922e52f6fb4154f51d8a757f23737b8d41c54a	5601.3 KB	Wed Jan 4 21:30:21 2023
tplink_eap615-wall-v1-squashfs-factory.bin	da730ecab1c3f1fc8155366eae8d1f673c6e463c997b5e413e186f6000806354	6792.2 KB	Wed Jan 4 21:30:25 2023
tplink_eap615-wall-v1-squashfs-sysupgrade.bin	ba7551f17b7f4b3641b5f1a54ca33fc69b6c9625869b249b9699ca63d2b26bcf	6784.6 KB	Wed Jan 4 21:30:25 2023
tplink_re350-v1-initramfs-kernel.bin	5abb6add9cb3b9ef53c9d546bcbe2b4c0016155a83154014d30629cafef1ccce	5614.8 KB	Wed Jan 4 21:30:21 2023
tplink_re500-v1-initramfs-kernel.bin	8f3846eec0a357c18b98d9d9336f3e92db825ae5e3c6c367372c37ff18ab8c3b	5614.8 KB	Wed Jan 4 21:30:21 2023
tplink_re500-v1-squashfs-factory.bin	efa773def32c2e09c5c3cd37aa0852efb8a6b72773789f2f34ff1028204f800a	6819.0 KB	Wed Jan 4 21:30:25 2023
tplink_re500-v1-squashfs-sysupgrade.bin	65158c01aae33003291c3b5009b9f06e2bf8339b31b23baad3f51c5b5f2fd624	6784.6 KB	Wed Jan 4 21:30:25 2023
tplink_re650-v1-initramfs-kernel.bin	2f2a3e1e20654500b99e4e8f265c4dbb4d2b9b07876fb6a04533f70eaf772ed4	5614.8 KB	Wed Jan 4 21:30:21 2023
tplink_re650-v1-squashfs-factory.bin	72b10741c07cdd4bbde5b99ad551c46f54190cd3137f4fc5d68bf830dfcb036c	6819.0 KB	Wed Jan 4 21:30:25 2023
tplink_re650-v1-squashfs-sysupgrade.bin	79b116bf27fd611246fffb36499eda6c7c4182c9cd08d8d16164b9b843797695	6784.6 KB	Wed Jan 4 21:30:25 2023
tplink_re650-v2-initramfs-kernel.bin	7485d9637b615a346b6c3f52bcc72bbff7af733c667432b9a1a29942dc76edee	5614.8 KB	Wed Jan 4 21:30:21 2023
tplink_re650-v2-squashfs-factory.bin	d6f05f6079854b6bb7901681f91ccac937cb73cbefe369e05bce8d0778e36280	6819.0 KB	Wed Jan 4 21:30:25 2023
tplink_re650-v2-squashfs-sysupgrade.bin	bb7c925fe0261f587fe9df6c3157bcbce097118b09b80987625e19b0cf0cca5d	6784.6 KB	Wed Jan 4 21:30:25 2023
tplink_tl-wpa8631p-v3-initramfs-kernel.bin	84bea42b71a82373ad319206e72dbe6ce180713962381cba4cde52a86cabcc7f	5614.8 KB	Wed Jan 4 21:30:21 2023
tplink_tl-wpa8631p-v3-squashfs-factory.bin	a436766c863537e4d983bdd17c524eaa2c4192b939714d63aad2ed3099af0581	6754.8 KB	Wed Jan 4 21:30:25 2023
tplink_tl-wpa8631p-v3-squashfs-sysupgrade.bin	b2b67a4ef7e37ed1b4256142210dbb8902c48e31a0f897f5cb63a007c6f67018	6720.6 KB	Wed Jan 4 21:30:25 2023
ubnt_edgerouter-x-initramfs-kernel.bin	4301520dab85b5e2170bcef42a2b45f905b33193038939668d1f993d6f965796	5596.6 KB	Wed Jan 4 21:30:21 2023
ubnt_edgerouter-x-sfp-initramfs-kernel.bin	11306b45f7804657d21576e77f437bb51510c65009496bcbade228f30fed19d6	5596.8 KB	Wed Jan 4 21:30:21 2023
ubnt_edgerouter-x-sfp-squashfs-sysupgrade.bin	0c648604c287b94160bed6b8039f3ced585002adca12c392439206ea1b98f877	5430.7 KB	Wed Jan 4 21:30:25 2023
ubnt_edgerouter-x-squashfs-sysupgrade.bin	ac80376ac3349fc3b3823cc8224e9351b8a5533117730af7b502d7d3d892c75e	5410.6 KB	Wed Jan 4 21:30:25 2023
ubnt_unifi-6-lite-initramfs-kernel.bin	dc71c23befb6f9c4905e15c390aeb068aac9e916bf48917eba70db3fbe5ec606	5601.3 KB	Wed Jan 4 21:30:21 2023
ubnt_unifi-6-lite-squashfs-sysupgrade.bin	f295fb8b19515d26fa1f33498fa9432b8e8d515ff919b7d9b0c571212aa99958	6912.6 KB	Wed Jan 4 21:30:25 2023
ubnt_unifi-flexhd-initramfs-kernel.bin	b15e3104fdd55075e874b887fe1054fc08ed1b2ea96b1778884e2c4bbfed9fac	5601.4 KB	Wed Jan 4 21:30:21 2023
ubnt_unifi-flexhd-squashfs-sysupgrade.bin	2e50d65c2fe7b8eab84e352374e812d4cbdb9d8234e8eb58ad8dab1fa2044375	6912.6 KB	Wed Jan 4 21:30:25 2023
ubnt_unifi-nanohd-initramfs-kernel.bin	996a2dfc2c6103567f88f998fcc8cfb1ca7d21cf0badb380f99acaed1028cf48	5614.3 KB	Wed Jan 4 21:30:21 2023
ubnt_unifi-nanohd-squashfs-sysupgrade.bin	83b1be02776565589c254580038591e69b7fb0a1bf198332797e2d7bc1f9fd55	6912.6 KB	Wed Jan 4 21:30:25 2023
ubnt_usw-flex-initramfs-kernel.bin	6d3e52304fc16a7d31a2e0802a078281cdaea79a2948dfb6f5cce042bb39a615	5601.1 KB	Wed Jan 4 21:30:21 2023
ubnt_usw-flex-squashfs-sysupgrade.bin	34c927f94d486620a67d5ef0780fd7ab93cb897d1d6eb129fc777e808de70dab	5888.6 KB	Wed Jan 4 21:30:25 2023
unielec_u7621-01-16m-initramfs-kernel.bin	2dd2eb5cce3e187f5366afa14ea95cf5929e19b7c73e5d9bb818198f73c35ebb	5596.7 KB	Wed Jan 4 21:30:21 2023
unielec_u7621-01-16m-squashfs-sysupgrade.bin	32387795c1fa81ecc8d6b5e92d13b4c0182f26bc65e2651a2263ae356a8cd53a	6656.6 KB	Wed Jan 4 21:30:25 2023
unielec_u7621-06-16m-initramfs-kernel.bin	4ff55e781240dae7b709b2e8896ce18f98a3bd94450a5ae1484efd4447ede8a1	5596.7 KB	Wed Jan 4 21:30:21 2023
unielec_u7621-06-16m-squashfs-sysupgrade.bin	fb05cc079672097a2cd208fbe565c209241cf305b08aaa0be36c0e1e23903bf7	5888.7 KB	Wed Jan 4 21:30:25 2023
unielec_u7621-06-64m-initramfs-kernel.bin	754f0e4e3191f4392d09443305f70494f0ecee940271bbaea817cb075ba96b7b	5596.7 KB	Wed Jan 4 21:30:22 2023
unielec_u7621-06-64m-squashfs-sysupgrade.bin	ba9ac9b2e7b2ea20dbfb6444cbbda25c9e870a4e1928c930dee6f3e31f7221e4	5888.6 KB	Wed Jan 4 21:30:25 2023
wavlink_wl-wn531a6-initramfs-kernel.bin	82285261ecfe7ad53cfe26800cceb0abe27b29d4d67d097f1ee663e1c936039f	5614.3 KB	Wed Jan 4 21:30:22 2023
wavlink_wl-wn531a6-squashfs-sysupgrade.bin	d9789871b9872af50090be43a8e7e2f615d413e21b152c3aea022e9f6b5ae73b	7168.6 KB	Wed Jan 4 21:30:26 2023
wavlink_wl-wn533a8-initramfs-WN533A8-kernel.bin	72b4acd816536eda6ec65e064044b8549edef59977e552a8386e1ed004933231	5614.3 KB	Wed Jan 4 21:30:22 2023
wavlink_wl-wn533a8-squashfs-sysupgrade.bin	af5e634cbaaf0f516fd526161fa22dfca617ecfbe95862cfa6e52caff93e936b	6912.6 KB	Wed Jan 4 21:30:26 2023
wavlink_ws-wn572hp3-4g-initramfs-kernel.bin	7b364b9a1232eb49124a55c8482abec059a49fed1b972fd82bb23d2d2ea60e3c	5601.6 KB	Wed Jan 4 21:30:22 2023
wavlink_ws-wn572hp3-4g-squashfs-sysupgrade.bin	89be8f5e6622b75a214f3c456f4c63c97c02637bd0a7c066da49cf7d023674d2	6976.6 KB	Wed Jan 4 21:30:26 2023
wevo_11acnas-initramfs-kernel.bin	e6d2a8cc3dcfbc383102e5569880afe01c4b86dbb38ccdc58e70e7a68b627f55	5596.7 KB	Wed Jan 4 21:30:22 2023
wevo_11acnas-squashfs-sysupgrade.bin	8de488ae7092de4377445808d027de9644b2b31ebb80bae0faf4b5bad3a54407	6656.6 KB	Wed Jan 4 21:30:26 2023
wevo_w2914ns-v2-initramfs-kernel.bin	dc7cd4a1be8eabe2d15e2e2755b6a8269b6ddb2971b20af78ae3f3c3c746e0ca	5596.7 KB	Wed Jan 4 21:30:22 2023
wevo_w2914ns-v2-squashfs-sysupgrade.bin	a031a5863556eb9eb198758d3868537c93961722659c263f530dbb4aa5f583ee	6656.6 KB	Wed Jan 4 21:30:26 2023
winstars_ws-wn583a6-initramfs-WN583A6-kernel.bin	c3406cb9f1c41453cd0d2747b2e9aac6f33f771ddce30258d07fc820c1baf1ea	5596.7 KB	Wed Jan 4 21:30:22 2023
winstars_ws-wn583a6-squashfs-sysupgrade.bin	221ffb7760e71e5b56dd064f71ccd74d3b5a7b9b93fa7b8dd4d213dac18fd6e4	6912.6 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-3-pro-initramfs-kernel.bin	d2507cd88754b0ba0cd2ccf40c1bd149aa079e0e08f3c81ef78617e21ab42b15	5596.9 KB	Wed Jan 4 21:30:22 2023
xiaomi_mi-router-3-pro-squashfs-factory.bin	6982fc9e7fd03f07cef16d4a237437ae9b52791c0f7bcb39465329a00b758441	9472.0 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-3-pro-squashfs-sysupgrade.bin	c39a1c64cee83be2f258d6452ff14607707bb4c5b23bdf91531da63b8540bb86	6900.6 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-3g-initramfs-kernel.bin	12ca02046f8674834f6c7e544b592a29df0bda570d46a6841f8cf006a6971f30	5596.9 KB	Wed Jan 4 21:30:22 2023
xiaomi_mi-router-3g-squashfs-kernel1.bin	c4ebea3ee670b91d268239d8dd724273ee0b08066b153df25e0ae0bf872f186e	2632.7 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-3g-squashfs-rootfs0.bin	ef546008f38432d03568e7e44a605307f29f8e982adfa32ed43ad99ac0327b45	4864.0 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-3g-squashfs-sysupgrade.bin	e0696bd37f78e1a011a7abe0660fdea161bc95146f04945a2d2f0026acf25a27	6460.6 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-3g-v2-initramfs-kernel.bin	e7a8e50649574dd745cc4aa6b9af94d32bbb5a7290a4a3c28f4f342ce5965832	5596.8 KB	Wed Jan 4 21:30:22 2023
xiaomi_mi-router-3g-v2-squashfs-sysupgrade.bin	085ffbd29a37db917b49ea850c4540edceb490c963159c3d60d3ea7d904deb54	6400.6 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-4-initramfs-kernel.bin	ba746942cba187995cf2db65d7fb3eb5047820b402b879cf73a4ed760b389839	5596.8 KB	Wed Jan 4 21:30:22 2023
xiaomi_mi-router-4-squashfs-kernel1.bin	a8c63a0701287a15f258f26f4965bbcb8efb5d7a43627c087aa77ea0913f34cc	2632.6 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-4-squashfs-rootfs0.bin	34a12bd12e076730464916d4e2d1498be12ebd209b6e6043c8fa234d7a56cffc	4736.0 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-4-squashfs-sysupgrade.bin	89d5071f50f2a9783637327237a4cf73cc2f5e9acfb042a1f8b22ace5999bfd8	6330.6 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-4a-gigabit-initramfs-kernel.bin	e694b1c4239df3b26477e661a242c548e71d3b6e47a9b0e2d87c19fdcab2cb7d	5596.8 KB	Wed Jan 4 21:30:22 2023
xiaomi_mi-router-4a-gigabit-squashfs-sysupgrade.bin	0790c7fe3d155d96110960e4bcd3417d927511ced6171fec4e60f144a386e8d4	6400.6 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-ac2100-initramfs-kernel.bin	62b72f291c7fcdc7b62aa0ca3905d0e8fd9f3f106fc0ba48636e863253a7dca0	5596.8 KB	Wed Jan 4 21:30:22 2023
xiaomi_mi-router-ac2100-squashfs-kernel1.bin	4384e1b2813f3b13390db3bd256ff94f5dc801996ec5aac42bc21464cbefdaba	2632.6 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-ac2100-squashfs-rootfs0.bin	8b295548b0740821ce7a2db501db70d80ddbac3b692c71f74d1be4de1f7fa525	5248.0 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-ac2100-squashfs-sysupgrade.bin	91b49c3cae1a378d5e20efce78d2f31c56dfc2d5771d80a0cbe3fffabde80a98	6840.6 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-cr6606-initramfs-kernel.bin	e894ec213426867307e4a1b02d790d32cc3c6b1fc9c40c51782cd6b6d954097d	5596.7 KB	Wed Jan 4 21:30:22 2023
xiaomi_mi-router-cr6606-squashfs-firmware.bin	5c84602fd7d27e9958ab288a40aa70a5c0d3e8441cc8a95a700c68cc5e5378fc	9216.0 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-cr6606-squashfs-sysupgrade.bin	a5147e53d1cfb60632e4cc9f7fc93e4af9e840451d359226640811bea453c93d	6690.6 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-cr6608-initramfs-kernel.bin	8f8bda8b4c95994d39b8ac7c115d4926cdc1b213783014782acf2039ade50163	5596.7 KB	Wed Jan 4 21:30:22 2023
xiaomi_mi-router-cr6608-squashfs-firmware.bin	2ea8ff4dec00ab13346c45b05682627aa40dc05a2829e4252f82faf3341aaecc	9216.0 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-cr6608-squashfs-sysupgrade.bin	d141d8421e97b77253d08c025e0daa4f333c5bb90b7909a71f86227435d21e03	6690.6 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-cr6609-initramfs-kernel.bin	4593ed0e7b4854637391d39579de2413e0a3925908ac9b385570e8d6367247ae	5596.7 KB	Wed Jan 4 21:30:22 2023
xiaomi_mi-router-cr6609-squashfs-firmware.bin	9bc051dec08dde59d8df22425cded35ee78844598e4f6ce480db5962437c0ba3	9216.0 KB	Wed Jan 4 21:30:26 2023
xiaomi_mi-router-cr6609-squashfs-sysupgrade.bin	3c3ebdf71f48f9f05866103d99f0bb10f14cf2744a3dd27f20c66731167aed10	6690.6 KB	Wed Jan 4 21:30:26 2023
xiaomi_redmi-router-ac2100-initramfs-kernel.bin	938895ad300c645abde6a4158321097c560a4fa1e0e812699619bdbcebedb2ce	5596.8 KB	Wed Jan 4 21:30:22 2023
xiaomi_redmi-router-ac2100-squashfs-kernel1.bin	8015533863927a1ca7f4b7b66bad45c3827ab46c982fdec3086deff1bbde9842	2632.6 KB	Wed Jan 4 21:30:26 2023
xiaomi_redmi-router-ac2100-squashfs-rootfs0.bin	8b295548b0740821ce7a2db501db70d80ddbac3b692c71f74d1be4de1f7fa525	5248.0 KB	Wed Jan 4 21:30:26 2023
xiaomi_redmi-router-ac2100-squashfs-sysupgrade.bin	0f3a26a54ea167ecf15e81b50d69e1c90396c6b10d1d07432607a0ad13eb0ed7	6840.6 KB	Wed Jan 4 21:30:26 2023
xiaoyu_xy-c5-initramfs-kernel.bin	773de425b13479a2abd1469036148a0c8cf7fc22bb019677cacd96b63a31bebb	5614.2 KB	Wed Jan 4 21:30:22 2023
xiaoyu_xy-c5-squashfs-sysupgrade.bin	a271b8322e03afab09dd9b0b3147729f1f7e729e1cfda9044952a639df1c5989	5888.6 KB	Wed Jan 4 21:30:26 2023
xzwifi_creativebox-v1-initramfs-kernel.bin	100c162148dbff19fb628b699c7298a879c3a41ee7cb037a432f940af3f63f73	5614.4 KB	Wed Jan 4 21:30:22 2023
xzwifi_creativebox-v1-squashfs-sysupgrade.bin	fdb54ca4c96158844458ea4b6891b5ada57c9b425499e0c20cae3e4e72b8f4ef	6400.6 KB	Wed Jan 4 21:30:26 2023
youhua_wr1200js-initramfs-kernel.bin	7e89b4756b071fe889c214753884e3eaa4facbb910324b0be7aa1762d0111a28	5614.3 KB	Wed Jan 4 21:30:22 2023
youhua_wr1200js-squashfs-sysupgrade.bin	4bdae708c258b95567c209e3fd70f9789175416ed2f87a5fa7a6f4273e33ead0	6656.6 KB	Wed Jan 4 21:30:26 2023
youku_yk-l2-initramfs-kernel.bin	3bd5205703fb388ec73a44db5e5a2eb00af66a72ea32ccc1c23601f5eced918e	5614.3 KB	Wed Jan 4 21:30:22 2023
youku_yk-l2-squashfs-sysupgrade.bin	584c1e740c3e44aa799bef88108975986537a703997ef818b795e4dfe18ef166	6656.6 KB	Wed Jan 4 21:30:26 2023
yuncore_ax820-initramfs-kernel.bin	908593067e0739792e91c9342ddac92393089283cefdedef0d10c0f55f8c17eb	5614.3 KB	Wed Jan 4 21:30:22 2023
yuncore_ax820-squashfs-sysupgrade.bin	ccac5f180ad05f92e22a1f161c729db6a9fb93072a2298c39273926246021420	6912.6 KB	Wed Jan 4 21:30:26 2023
zbtlink_zbt-we1326-initramfs-kernel.bin	aa6c0a927dd3ee5e0b7032a1c0e7259cd858f9357bedcdadff0f1f572e6fa15e	5596.6 KB	Wed Jan 4 21:30:22 2023
zbtlink_zbt-we1326-squashfs-sysupgrade.bin	3b78a53d70b4f02e96f1bfd48d5c5917a4542e54c8e81934fe43a66f94d8ea64	6656.6 KB	Wed Jan 4 21:30:26 2023
zbtlink_zbt-we3526-initramfs-kernel.bin	4b79bdd3eb2ced24dcb6804340615a78c743bfaa467f808f9f06f696aa192bfa	5596.6 KB	Wed Jan 4 21:30:22 2023
zbtlink_zbt-we3526-squashfs-sysupgrade.bin	12a643b1728329b7d9c28cfd67861be7288fcf6079f657bc11e7ab2efd51f49f	6656.6 KB	Wed Jan 4 21:30:26 2023
zbtlink_zbt-wg1602-16m-initramfs-kernel.bin	4605416222ce2162c68031068915cccccddd7c9a5541a70cca03036e1654e49c	5596.8 KB	Wed Jan 4 21:30:22 2023
zbtlink_zbt-wg1602-16m-squashfs-sysupgrade.bin	9529a68b5fc34da1a524055c37e231d5fee0bcd2a6c4640773e0bd42797e1cd6	6656.6 KB	Wed Jan 4 21:30:26 2023
zbtlink_zbt-wg1608-16m-initramfs-kernel.bin	17e03c553354a876d4e764526be1c2249f32988fa25efc240210ce225d3da7c6	5596.8 KB	Wed Jan 4 21:30:22 2023
zbtlink_zbt-wg1608-16m-squashfs-sysupgrade.bin	618506352745572c179924c1284d21d56841bf9b2d5c98358f82b580b6535869	6912.6 KB	Wed Jan 4 21:30:26 2023
zbtlink_zbt-wg2626-initramfs-kernel.bin	f48ec469fa6713e55fac58a9ef34c568186c4bd7b81f782b2e5088a8785fd352	5596.7 KB	Wed Jan 4 21:30:22 2023
zbtlink_zbt-wg2626-squashfs-sysupgrade.bin	b00f016f0035909155fd99b4158f61477e14b5e85504de9c5e9746750aa6b516	6656.6 KB	Wed Jan 4 21:30:26 2023
zbtlink_zbt-wg3526-16m-initramfs-kernel.bin	f2813560a0b7766940ffac84dd7531dcca9f035608f41779446e8fc075f4898b	5596.7 KB	Wed Jan 4 21:30:22 2023
zbtlink_zbt-wg3526-16m-squashfs-sysupgrade.bin	9571cf55db491ff73558dacf3df12d4bb9d2c9819b2ace694ff55a87a86323e7	6656.6 KB	Wed Jan 4 21:30:26 2023
zbtlink_zbt-wg3526-32m-initramfs-kernel.bin	672031c6a10f5fe19b6cdfa7a5c9b405dc070dc02541b1cbf3084d80b953f8d3	5596.7 KB	Wed Jan 4 21:30:22 2023
zbtlink_zbt-wg3526-32m-squashfs-sysupgrade.bin	8e877f29b742852ca1b9c8dab6af93daf0117cd74d90c6a0484c158a337fc93f	6656.6 KB	Wed Jan 4 21:30:26 2023
zio_freezio-initramfs-kernel.bin	8c9c70dbcd94393599de401154efa8c3eb789dd0a9ab87d7a38a0d1975f32f5f	5614.3 KB	Wed Jan 4 21:30:22 2023
zio_freezio-squashfs-sysupgrade.bin	fa1ace675e23bb03b2054f2463911198f92b1fbe184d8a2205a1fa2f318aba6e	6656.6 KB	Wed Jan 4 21:30:26 2023
zyxel_nr7101-initramfs-recovery.bin	9430e4ea903c0b00949f8ccb800d391b0056547c65f17f4e48a1a708730f2aad	5614.7 KB	Wed Jan 4 21:30:22 2023
zyxel_nr7101-squashfs-sysupgrade.bin	3b8a2eea4210ee0e9ccd726f324706f8416874fbbdcb68bb8d63474cfdfa510e	6460.6 KB	Wed Jan 4 21:30:26 2023
zyxel_nwa50ax-initramfs-kernel.bin	487fbe585f5dc19ab9ffcd751fed1248d38ace67f568b8af55b96804a9cb5dc8	5601.5 KB	Wed Jan 4 21:30:22 2023
zyxel_nwa50ax-squashfs-factory.bin	25f50e5c7c4007f3d73cc7e5dae0ab6ce0371a2727338c57b3828b47631b2746	13313.3 KB	Wed Jan 4 21:30:27 2023
zyxel_nwa50ax-squashfs-ramboot-factory.bin	7e4f0e16b3da678d10a4f88930aa282bc096f2b00295fbd42a10633b4b972329	13312.0 KB	Wed Jan 4 21:30:27 2023
zyxel_nwa50ax-squashfs-sysupgrade.bin	64362e13006eff68e0a2c55a102c619c287cd370e0b694a0f92d19b81cae0175	6690.6 KB	Wed Jan 4 21:30:26 2023
zyxel_nwa55axe-initramfs-kernel.bin	83157f9864b485d13c125f24cd662f23f8797c3e05ee9fd2cab569b016c2118d	5601.0 KB	Wed Jan 4 21:30:23 2023
zyxel_nwa55axe-squashfs-factory.bin	a90e163f340599aecc37602b460e6fe6850ab0fcf2172b434ebab78996bbd343	13313.3 KB	Wed Jan 4 21:30:27 2023
zyxel_nwa55axe-squashfs-ramboot-factory.bin	51bd3ae4a6dad547b4d7829947a4738d465398772164fac6c7f721c48ccfbbc4	13312.0 KB	Wed Jan 4 21:30:27 2023
zyxel_nwa55axe-squashfs-sysupgrade.bin	144954c5720db973af517a66b6d428810ba384704748dd949ef3108bf99a492d	6690.6 KB	Wed Jan 4 21:30:27 2023
zyxel_wap6805-initramfs-kernel.bin	7666f34a381ec730e7e56ba890f271deb8e16f001cca5b278ac5c3a0569c6782	5596.9 KB	Wed Jan 4 21:30:23 2023
zyxel_wap6805-squashfs-sysupgrade.bin	faabca731c4b1651cfd530d3c21a0eea09646c894f45b6facd6c6c8fec988403	6230.6 KB	Wed Jan 4 21:30:27 2023

