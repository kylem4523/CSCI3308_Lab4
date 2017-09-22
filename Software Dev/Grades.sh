#!/bin/bash
#Kyle McDevitt

filename=$1
if [ $# -eq 0 ]  
then
	echo "Usage: $0 filename";
	exit 1;
fi
while read -r SID FIRST LAST SCORE1 SCORE2 SCORE3
do
	RUNNER=$(expr $SCORE1 + $SCORE2 + $SCORE3)
	AVG=$(expr $RUNNER / 3)
	printf '%d [%d] %s, %s \n' "$AVG" "$SID" "$LAST" "$FIRST" 
done < "$filename" | sort -b -k3 -k4 -k2