#!/bin/bash

#For Loop

for (( i = 1; i < 5; i++ ));
do
	echo "hello $i times by for loop"
done

# While Loop
j=0
while (( j < 15 ))
do
	echo "hello $j times by while loop"
	(( j++ ))
done
