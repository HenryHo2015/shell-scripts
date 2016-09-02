#!/bin/bash
#Describe:check the user is root or not

if [ $UID != 0 ];then
	echo Non root user.pls run as root.
else
	echo root user
fi
