#!/bin/bash
#Kyle McDevitt
#This is another GitHub edit
filename=$1
if [ $# -eq 0 ]  
then
	echo "Usage: $0 filename";
	exit 1;
fi
cat $filename | sort -b -k3,3 -k2,2 -k1,1 | awk '{ printf "%d [%d] %s, %s\n", ($4 + $5 + $6) / 3, $1, $3, $2}'
