#!/bin/bash

ssr(){

        stop(){
                uci set shadowsocksr.cfg013fd6.global_server=nil
                uci commit shadowsocksr
                /etc/init.d/shadowsocksr stop
        }

        start(){
                uci set shadowsocksr.cfg013fd6.global_server=cfg094a8f
                uci commit shadowsocksr
                /etc/init.d/shadowsocksr start
        }

}

