#!/bin/bash

#check if a directory exist

if [ -d $HOME/performance ]; then
	echo "Directory exist"
	free &>> $HOME/performance/memory.log
else
	mkdir $HOME/performance
	echo "Directory performance created"
	free &>> $HOME/performance/memory.log
fi
