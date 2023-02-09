#!/bin/bash
if [ `/usr/bin/whoami` != root ]; then
 echo "Boss you must be a ROOT user to perform this activity..."
  exit
fi
for num in {1..5}
do  userdel -r user$num
done

