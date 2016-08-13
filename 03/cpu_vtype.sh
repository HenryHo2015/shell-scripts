#!/bin/bash

cpu_support_vtype()
{
vtype=`lscpu |grep "Virtualization type"|cut -d: -f2`
echo $vtype
return 0
#local vtype
}

cpu_support_vtype
