#!/bin/bash
function start_service() {
	PID=$(pgrep -f "$1")
	if [ ! -z "$1" ]
	then 
		echo "please provide a vaild service to start";
	    return 1;
	elif [ ! "$PID" ] 
	then 
		echo "exec $1";
		"$1";
		start_service "$1";
	else
		echo "$1 service started PID=$PID";
	fi
}

for i in "${START_SERVICE[@]}"
do
    start_service "${i}"
done;