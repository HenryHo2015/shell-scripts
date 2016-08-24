#!/bin/bash
#Describe:Getting the ip address and mask
#Usage:get_ip_addr.sh

get_ip_addr()
{
	ip=`ip addr|grep '\binet\b'|grep -v 'host lo'|awk '{print $2}'`
	echo $ip
}

get_ip_addr
