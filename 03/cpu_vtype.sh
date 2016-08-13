#!/bin/bash
#Describe:Get CPU Virtualization type

cpu_support_vtype()
{
vtype=`lscpu |grep "Virtualization type"|cut -d: -f2`
echo $vtype
return 0
}

cpu_support_vtype
unset cpu_support_vtype
unset vtype
