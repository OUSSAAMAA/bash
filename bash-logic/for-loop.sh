#!/bin/bash

for element in first second third; do
	echo "on :$element"
done

readarray -t files < files.txt

for file in "${files[@]}"; do
	if [ -f "$file" ]; then
		touch $file
	else
			echo "h"
	fi
done
