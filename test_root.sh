#!/bin/bash
RUNNINGUSR=`/usr/bin/whoami`
if [ "$RUNNINGUSR" == "root" ]; then
  echo "Boss you are the ROOT user be responsible"
else
  echo "you are $RUNNINGUSR user"
fi
