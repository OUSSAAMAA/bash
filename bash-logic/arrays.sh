#!/bin/bash

#ARRAYS CAN STORS ANY TYPES OF DATA 
numbers=(1 2 3 4)

#access the first element
echo $numbers

#access the third value
echo "third element of an array : ${numbers[2]}"

#get the hole array
echo "hole array : ${numbers[@]} "

#adding an element to an array
numbers+=(5)

#deleting from an array ,remove second element
unset numbers[1]

#show index number
echo  "array indexes : ${!numbers[@]}"

echo ${numbers[@]}



