#!bin/bash
awk 'NR==1 { next }
	{printf("%d\n", ($4+$5+$6)/3) }' 
