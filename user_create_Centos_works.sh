#!/bin/bash
read -p "Enter user you want to create:" MYUSER
MYPASS=devops
/usr/bin/id $MYUSER
if [ $? -eq 0 ]; then
  echo "The user $MYUSER you entered already exist..."
  exit
elif [ `/usr/bin/whoami` != root ]; then
  echo "Boss you must be a ROOT user to perform this activity..."
  exit
else
        useradd $MYUSER
        echo "$MYPASS" | passwd --stdin $MYUSER
fi

