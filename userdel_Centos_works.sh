#!/bin/bash
read -p "Enter user you want to delete:" MYUSER
if [ `/usr/bin/whoami` != root ]; then
  echo "Boss you must be a ROOT user to perform this activity..."
  exit
fi
/usr/bin/id $MYUSER
if [ $? -eq 0 ]; then
        userdel -r $MYUSER
echo "The user $MYUSER successfully deleted..."
fi

