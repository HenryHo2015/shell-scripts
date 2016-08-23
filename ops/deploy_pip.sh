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

show_banner() {
echo "*****************************************"
echo "*  1.Deploy pip via EPEL                *"
echo "*  2.Install pip via curl               *"
echo "*  3.Verify pip                         *"
echo "*  4.Getting started                    *"
echo "*****************************************"
}

show_banner
read -p "Please enter your choice:" i
case $i in
1)
	rpm_deploy;;
2)
	curl_deploy;;
3)
	verify_pip;;
4)
	show_help;;
*)
	echo "Please enter the correct number."

esac
