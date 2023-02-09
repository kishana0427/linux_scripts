#!/bin/bash
read -p "Enter the file name you want to create users:" MYLIST
if [ ! $MYLIST ]; then
	echo "Mandatory to input a File"
	exit
fi
if [ ! -f $MYLIST ]; then
	echo "The File is incorect"
	exit
fi
for MYUSER in `cat $MYLIST`
do
	echo $MYUSER | ./createuser.sh
done
