#!/bin/bash
	MARKS=101
if [ "!$MARKS" ]; then
                echo "Mandatory: Enter valid data"
	fi
if  [ "$MARKS" -gt 100 -o "$MARKS" -lt 0 ]; then
                echo "Invalid Marks enterd"


elif [ "$MARKS" -ge 90 ]; then
		echo "RESULT: Distncion Class"
elif [ "$MARKS" -ge 70 ]; then
                echo "RESULT: First Class"
elif [ "$MARKS" -ge 60 ]; then
                echo "RESULT: Second Class"
elif [ "$MARKS" -ge 50 ]; then
                echo "RESULT: Third Class"
else
                echo "RESULT: Fail"
fi

