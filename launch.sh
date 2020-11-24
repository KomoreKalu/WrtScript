#!/bin/bash
. ./hostCheck.sh
. ./ssr.sh
. ./dhcp.sh
sleep 120 
HOST='172.16.7.1'
if [ $(hostCheck $HOST) -gt 0 ] ; then	
	ssr 
	stop
	dhcp 
	setup
	wifi
fi
