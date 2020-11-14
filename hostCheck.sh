#!/bin/bash
hostCheck(){
	echo $(ping -w 3 -c 3 $1 | grep -c ttl )
}
