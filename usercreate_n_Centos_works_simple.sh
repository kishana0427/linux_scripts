#!/bin/bash
if [ `/usr/bin/whoami` != root ]; then
 echo "Boss you must be a ROOT user to perform this activity..."
  exit
fi
    MYPASS=123456
for num in {1..5}
do  useradd user$num
    echo "The user user$num you created/addedd successfully..."
    echo "$MYPASS" | passwd --stdin user$num
done

