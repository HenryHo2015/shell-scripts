#!/bin/bash
#Filename: mysql_deploy.sh
#Version:1.0
#Henry

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH

#Define variables
MYSQL_USER=mysql
MYSQL_GROUP=mysql
MYSQL_CNF=/etc/my.cnf
MYSQL_DATA=/data/mysql
MYSQL_VERSION=mysql-5.5.21
MYSQL_PREFIX=/usr/local/$MYSQL_VERSION
MYSQL_CMAKE="cmake -DMYSQL_USER=$MYSQL_USER \
-DCMAKE_INSTALL_PREFIX=$MYSQL_PREFIX \
-DMYSQL_DATADIR=$MYSQL_DATA \
-DMYSQL_UNIX_ADDR=/tmp/mysqld.sock \
-DEXTRA_CHARSETS=all \
-DDEFAULT_CHARSET=utf8 \
-DDEFAULT_COLLATION=utf8_general_ci \
-DWITH_INNOBASE_STORAGE_ENGINE=1 \
-DENABLED_LOCAL_INFILE=1 \
-DWITH_EMBEDDED_SERVER=1  \
-DWITH_DEBUG=0"

install_down(){
	if [ ! -f /usr/local/src/$MYSQL_VERSION.tar.gz ]
	then
		wget http://dev.mysql.com/get/Downloads/MySQL-5.5/$MYSQL_VERSION.tar.gz -P /usr/local/src
	fi
}

install_main(){
	yum -y install gcc gcc-c++ cmake  ncurses-devel bison 
	groupadd $MYSQL_GROUP
	useradd -g $MYSQL_GROUP $MYSQL_USER
	install_down
	cd /usr/local/src
	tar xvf $MYSQL_VERSION.tar.gz
	cd $MYSQL_VERSION

	CFLAGS="-O3" CXX=gcc
	CXXFLAGS="-O3 -felide-constructors -fno-exceptions -fno-rtti"
	$MYSQL_CMAKE
    make -j $CPU_CORE
	make install

	chown -R $MYSQL_GROUP:$MYSQL_USER $MYSQL_PREFIX
	
	mv /usr/local/src/$MYSQL_VERSION/support-files/my-medium.cnf $MYSQL_CNF
	mv /usr/local/src/$MYSQL_VERSION/support-files/mysql.server /etc/init.d/mysqld
	chmod +x /etc/init.d/mysqld 
	chkconfig --level 345 mysqld on

	$MYSQL_PREFIX/scripts/mysql_install_db --user=$MYSQL_USER \
	--defaults-file=$MYSQL_CNF \
	--basedir=$MYSQL_PREFIX \
	--datadir=$MYSQL_DATA 
	
	echo "export PATH=/usr/local/$MYSQL_VERSION/bin:$PATH" >>/etc/profile
	source /etc/profile
}

#Check privilege user
if [[ `id -u` != "0" ]]
then
	echo "Error: You must be root user to run the script!"
	exit 1
fi

#Check number of cpu cores
CPU_CORE=`awk '/processor/{a++}END{print a}' /proc/cpuinfo`

#Install MySQL
install_main

#End




