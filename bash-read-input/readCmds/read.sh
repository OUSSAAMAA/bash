#!/bin/bash

# -p allow us to add a prompt to read from yse
read -t 5 -p "what's your first name: " name
read -s -t 5 -p "how old are you? " age
read -t 5 -p "what is you're city? " town

# -s hide what user is typing in terminal 
# -t add a timout we can wait for user input it's (s) 

echo "My name is $name"
echo "i'm $age and i'm from $town"


