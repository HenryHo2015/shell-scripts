#!/bin/bash
#Judging root user or not

check_root()
{
if [ $UID -ne 0 ]; then
        echo "Please run as root"
	local check_root = true

else
        echo "Root User"
	local check_root = false
fi
}

check_root

unset check_root
