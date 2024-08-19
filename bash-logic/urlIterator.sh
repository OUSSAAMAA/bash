#!/bin/bash

readarray -t  urls < urls.txt 
for url in ${urls[@]}; do
	fileName="$(echo "$url" | cut -d"." -f2).txt"
	touch $fileName
	curl --head $url > $fileName
done
