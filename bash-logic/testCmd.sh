#!/bin/bash

# TEST CMD RETURN 0 IF THE TEST EVALUATE TO TRUE AND 1 IF THE RESULT OF THE TEST IS FALSE

# SYNTAX  

#--------------------------INTIGER COMPARISON OPERATORS-------------------------
# -eq  : check if two number are equal
# -ne  : check if two number are not equal
# -gt  : greater than
# -lt  : less than
# -geq : geater than or equal
# -leq : less than or equal 

#----------------------------STRING TEST OPERATORS------------------------------
#comparing number
[ 2 -gt 1 ] ; echo $?

#comparing string
[[ hi = shi ]] ; echo $?;
# -z : check if a string is null
# -n : check if a string is not null

# check if there is a file with a certain name 
# -e stand for exist
# -f check if a file is regular
# -d check if it's directory
# -x check if file has excution permission

[[ -e file.txt ]] ; echo $?;
