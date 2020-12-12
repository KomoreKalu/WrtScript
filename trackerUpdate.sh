#!/bin/bash
URL="https://cdn.jsdelivr.net/gh/ngosang/trackerslist/trackers_best.txt"

uci set aria2.main.bt_tracker_enable=1

curl -s $URL | tr -s '\n' | while read line 
do
	uci add_list aria2.main.bt_tracker="$line"
done

uci commit
