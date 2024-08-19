#!/bin/bash

while getopts "m:s:" opt; do
	case $opt in
		m) total_seconds=$(($OPTARG*60))
		;;
		s) total_seconds=$(($total_seconds + $OPTARG))
		;;
		*) echo "NO PATTERN MATCHED"
		;;
	esac
done

#chronometer
while [ $total_seconds -gt -1 ];do
	sleep 1
	echo $total_seconds
	total_seconds=$(($total_seconds-1))
done
echo "horray Times is UP !!"
