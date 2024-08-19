#!/bin/bash

read -p "How old are you? " age

case $age in
    [0-9]|1[0-8]) 
        echo "You are a minor. Access denied!";;
    1[9-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9]|6[0-9]|7[0-9]|8[0-9]|9[0-9]|100) 
        echo "You're good. Welcome";;
    *)
# *act as the default since it always match put it always at the end 
        echo "Invalid age input";;
esac

