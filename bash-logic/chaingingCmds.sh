#!/bin/bash

# THERE ARE 4 CHAINING OPERATORS ; & && ||
# &  : RUN THE CMD PREVIOUS TO IT IN THE BACKGROUND AND RETURN  IT'S JOB ID ALLOW FOR ASYNCHRONOUS EXCUTION;
# ;  : RUN CMDS SEQUENTIALY CMD AFTER THE OTHER  SAME AS RUNING CMD ON MULTIPILE LINES
# && : RUN THE SECOND CMD ONLY IF THE FIRST SUCCEDED EXCUTION
# || : RUN ONLY IF FIRST CMD FAIL
#hi will print first
echo oussama & echo hi

#the echo won't run because the cd cmd fail 
cd random && echo "won't run"

#echo will print 
cd random || echo "first cmd failed"

#we can run a ternary operator by combinination of operators
cd random && echo "dir exist" || echo "dir don't exist"
