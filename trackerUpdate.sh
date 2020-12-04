#!/bin/bash
URL="https://cdn.jsdelivr.net/gh/ngosang/trackerslist/trackers_best.txt"

curl -s $URL | tr -s '\n' | while read line 
do
	uci add_list aria2.main.bt_tracker="$line"
done

uci commit
