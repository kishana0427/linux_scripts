#!/bin/bash
	MARKS=70
if [ "$MARKS" -ge 90 ]; then
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
