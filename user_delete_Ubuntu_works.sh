#!/bin/bash
#if [ `/usr/bin/whoami` != root ]; then
if [ $(id -u) -eq 0 ]; then
	read -p "Enter user you want to create: " MYUSER
	/usr/bin/id $MYUSER
	if [ $? -ne 0 ]; then
        	echo "The user $MYUSER not exist..."
		exit
	else
        	userdel -r "$MYUSER"
        	echo "The user $MYUSER deleted successfully..."  
	fi
else                                         
	echo "Boss you must be a ROOT user to perform this activity..."
	exit
fi
