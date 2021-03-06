#!/bin/bash
#Describe:Get CPU Support Virtualization type

check_cpu_support_vtype()
{
  vtype=`lscpu |grep "Virtualization type"|cut -d: -f2`
  echo $vtype
  return 0
}

check_cpu_support_vtype		#Call defined function

unset cpu_support_vtype   	#Destroy function cpu_support_vtype()
unset vtype 			#Destroy variable vtype
