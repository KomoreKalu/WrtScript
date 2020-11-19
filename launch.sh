#!/bin/bash
. ./hostCheck.sh
. ./ssr.sh
. ./dhcp.sh
HOST=172.16.7.1
if [ "hostCheck $HOST" -gt 0 ] ; then	
	ssr stop
	dhcp setup
else
	ssr start
	dhcp fallback
fi
