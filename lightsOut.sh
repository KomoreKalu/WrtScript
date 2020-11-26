#!/bin/bash
. /root/WrtScript/ssr.sh
. /root/WrtScript/dhcp.sh
ssr 
start
dhcp 
fallback
wifi

