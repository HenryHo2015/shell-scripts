#!/bin/bash
#Bulk add users

read -p "Please enter number you want to add: " num

add_user()
{
	read -p "Enter user name:" username
	useradd $username >/dev/null 2>&1
	read -p "Enter user password:" password
	echo $password | passwd --stdin $username >/dev/null 2>&1
}

for i in $(seq 1 $num)
	do
		add_user
	done
