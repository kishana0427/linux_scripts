#!/bin/bash
#if [ `/usr/bin/whoami` != root ]; then
if [ $(id -u) -eq 0 ]; then
        read -p "Enter user you want to create: " MYUSER
        read -s -p "Enter password : " password
        /usr/bin/id $MYUSER
        if [ $? -eq 0 ]; then
                echo "The user $MYUSER you entered already exist..."
                exit
        else
                MYPASS=$(perl -e 'print crypt($ARGV[0], "password")' $password)
                useradd -m -p "$MYPASS" "$MYUSER"
                echo "The user $MYUSER created successfully..."  
        fi
else
        echo "Boss you must be a ROOT user to perform this activity..."
        exit
fi

