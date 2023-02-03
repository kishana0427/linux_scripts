#!/bin/bash
read -p "Enter your file you want to read : " FILE
if [ -f "$FILE" ]; then
  echo "the file "$FILE" exist"
else
echo "the file "$FILE" not exist"
echo "Hi how are you" >> "/home/mrcetece/script/file2"
fi
