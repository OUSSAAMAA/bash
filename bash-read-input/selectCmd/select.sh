#!/bin/bash
PS3="TYPE THE NUMBER OF THE DAY OF THE WEEK REQUESTED : "
select day in mond tue wed thu fri sat sun;
do 
echo the day selected is ${day}
break
done
