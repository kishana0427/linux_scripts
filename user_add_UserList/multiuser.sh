#!/bin/sh
for MYUSER in `more userlist.txt `
do
echo $MYUSER
userdel -r  $MYUSER
done
