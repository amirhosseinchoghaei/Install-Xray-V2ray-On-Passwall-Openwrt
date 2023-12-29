#!/bin/sh

cd

vore=`cat /root/vore.txt`

RESULT=`ls /tmp/usr/bin/$vore`
            if [ "$RESULT" == "/tmp/usr/bin/$vore" ]; then


            echo -e "${GREEN} CORE OK ${GREEN}"


logger -t check_internet "CORE is OK"


 else
           logger -t check_internet "CORE failed"

           
            sleep 3
            service amir start

fi

NUM=`pgrep passwall | grep -o '[[:digit:]]*' | sed -n '1p'`

    if [ "$NUM" -gt "2" ]; then

    echo "PASSWALL OK"

    logger -t check_internet "PASSWALL IS OK"

    exit 1

  else

   echo "PASSWALL FAILED"

   logger -t check_internet "PASSWALL NOT OK"

   /etc/init.d/passwall restart


fi



