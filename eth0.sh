#!/bin/bash

IP=`/sbin/ifconfig eth0 | /bin/grep addr: | /usr/bin/cut -d: -f2 | /usr/bin/cut -d" " -f1`
LOG="/var/log/ethup.log"
if [ -z "$IP" ]; then
/sbin/ifdown eth0
/sbin/ifup eth0
echo `date`": eth0 is up" >>$LOG
fi
