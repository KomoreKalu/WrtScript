#!/bin/bash
. ./ssr.sh
. ./dhcp.sh
ssr 
start
dhcp 
fallback
wifi

