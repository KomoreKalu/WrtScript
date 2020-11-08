#!/bin/bash
HOST= 
checkHost(){
	FLAG=$(ping -w 3 -c 3 $HOST | grep -c ttl )
	if [ $FLAG -lq 1 ]; then
		

	fi
}
