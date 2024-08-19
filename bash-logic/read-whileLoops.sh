#!/bin/bash

while read line; do
	echo $line;
done <  <(ls $HOME)

# <(ls &HOME) : allow us to read from the result of a cmd as if it's a file.
