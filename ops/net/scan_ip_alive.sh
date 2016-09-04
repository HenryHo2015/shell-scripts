#!/bin/bash
#Describe:scan ip address and check its status

for ip in 192.168.0.{1..255}
do
	ping -c 2 $ip &> /dev/null 
	if [ $? -eq 0 ];then
		echo "$ip is alive"
	fi
done
