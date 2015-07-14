#!/bin/bash
/usr/sbin/ntpdate -s 10.10.245.199
/sbin/hwclock --adjust
/sbin/hwclock --systohc
