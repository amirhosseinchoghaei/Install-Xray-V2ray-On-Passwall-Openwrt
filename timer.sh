#!/bin/sh

RESULT=`ls /tmp/usr/bin/xray`
            if [ "$RESULT" == "/tmp/usr/bin/xray" ]; then


            echo -e "${GREEN} XRAY OK ${GREEN}"


logger -t check_internet "Internet connection is OK"



a=`pgrep passwall`
b=1
if [ "$a" -gt "$b" ]; then


echo "PASSWALL IS RUNNING"

logger -t check_internet "PASSWALL IS RUNNING"

else

echo "PASSWALL IS NOT RUNNING"
logger -t check_internet "PASSWALL IS NOT RUNNING"
logger -t check_internet "Restarting PASSWALL"
/etc/init.d/passwall restart

fi




 else
           logger -t check_internet "Internet connection failed"

           
            sleep 10
            service amir start

fi
