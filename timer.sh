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



