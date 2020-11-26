#!/bin/bash
dhcp(){
	fallback(){
		uci delete dhcp.lan.dhcp_option
		uci commit
		/etc/init.d/dnsmasq restart
	}
	setup(){
		uci set dhcp.lan.dhcp_option="3,172.16.7.1"
		uci add_list dhcp.lan.dhcp_option="6,172.16.7.1"
		uci commit 
		/etc/init.d/dnsmasq restart
	}
}
