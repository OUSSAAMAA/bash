#!/bin/bash

read -p "What is your first name? " name

read -p "What is your surname/family name? " familyName

read -N 4 -p "What is your extension number? " extention

read -p "what's your phone number? " code


echo "$name,$familyName,$extention,$code" &>> extensions.csv

exit 0 
