#!/bin/bash
. /root/WrtScript/hostCheck.sh
. /root/WrtScript/ssr.sh
. /root/WrtScript/dhcp.sh

sleep 40 
HOST='172.16.7.1'
COUNT=$(hostCheck $HOST)
if [ "$COUNT" -gt 0 ] ; then	
	echo "$HOST online"		
	ssr 
	stop
	dhcp 
	setup
	wifi
else
	echo "skip"
fi
