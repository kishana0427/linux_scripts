#!/bin/bash
read -p "Enter username:" MYUSER
if [ ! $MYUSER ]; then
	echo "please enter username you want to create: MANDATORY"
fi

RUNNINGUSR=`/usr/bin/whoami`

if [ $RUNNINGUSR != root ]; then
	echo "Boss you must be a ROOT user to perform this activity..."
	exit
fi

/usr/bin/id $MYUSER
if [ $? -ne 0 ]; then
		useradd $MYUSER
		echo "$MYUSER added successfully..."
                echo $MYUSER"123" | /usr/bin/passwd --stdin $MYUSER
else 
		echo "The user $MYUSER you enterd is already exist..."
                exit

fi
