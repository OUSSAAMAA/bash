#!/bin/bash

while getopts "f:" opt; do
	path=$OPTARG
done

while read line; do
	mkdir "$line"
done <  $path
