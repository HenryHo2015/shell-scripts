#!/bin/bash
#Describe:Deploy python pip automaticly
#Usage:./deploy_pip.sh
#Author:Henry Ho
#Version:1.0

rpm_deploy()
{
rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
yum update -y
yum install python-pip -y
}

curl_deploy()
{
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py
}

verify_pip()
{
pip -V
}

show_help()
{
pip --help
}

show_main_menu() 
{
echo "*****************************************"
echo "*  1.Deploy pip via EPEL                *"
echo "*  2.Install pip via curl               *"
echo "*  3.Verify pip                         *"
echo "*  4.Getting started                    *"
echo "*****************************************"
}

show_main_menu
read -p "Please enter your choice:" i
case $i in
1|d|D)
	rpm_deploy;;
2|i|I)
	curl_deploy;;
3|v|V)
	verify_pip;;
4|g|G)
	show_help;;
*)
	echo "Please enter the correct number."

esac

