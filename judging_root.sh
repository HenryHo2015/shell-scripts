#!/bin/bash
#Judging root user or not

judging_root()
{
if [ $UID -ne 0 ]; then
        echo "Please run as root"

else
        echo "Root User"
fi
}

judging_root
