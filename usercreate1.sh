#!/bin/bash
read -p "Enter username:" MYUSER
if [ !$MYUSER ]; then
	echo "please enter username you want to create: MANDATORY"
fi
MYPASS=123456
RUNNINGUSR=`/usr/bin/whoami`
if [ $RUNNINGUSR != root ]; then
	echo "Boss you must be a ROOT user to perform this activity..."
	exit
fi
/usr/bin/id $MYUSER
	if [ $? -eq 0 ]; then
	echo "The user $MYUSER you enterd is already exist..."
	exit
else /usr/sbin/useradd $MYUSER
	echo "$MYPASS" | /usr/bin/passwd --stdin $MYUSER
	echo "The user $MYUSER added/created successfully..."
fi

