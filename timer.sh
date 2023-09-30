#!/bin/sh

RESULT=`ls /tmp/usr/bin/xray`
            if [ "$RESULT" == "/tmp/usr/bin/xray" ]; then


            echo -e "${GREEN} XRAY OK ${GREEN}"


logger -t check_internet "XRAY is OK"


 else
           logger -t check_internet "XRAY failed"

           
            sleep 3
            service amir start

fi


silo=`pgrep passwall`

if [[ $silo =~ ^[0-9]+$ ]]; then


echo "PASSWALL IS RUNNING"

logger -t check_internet "PASSWALL IS RUNNING"

else

echo "PASSWALL IS NOT RUNNING"
logger -t check_internet "PASSWALL IS NOT RUNNING"
logger -t check_internet "Restarting PASSWALL"
/etc/init.d/passwall restart

fi
