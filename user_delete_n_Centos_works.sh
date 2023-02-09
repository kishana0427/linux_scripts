#!/bin/bash
if [ `/usr/bin/whoami` != root ]; then
 echo "Boss you must be a ROOT user to perform this activity..."
  exit
fi
MYPASS=123456
for num in {1..5}
do /usr/bin/id user$num
  if [ $? -eq 0 ] ; then
    userdel -r  user$num
    echo "The user user$num deleted successfully..."
  else
    echo "The user user$num not exist..."
  fi
done

