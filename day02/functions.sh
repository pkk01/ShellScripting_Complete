#!/bin/bash

# function to check given age is eligible to vote or not

function is_eligible() {
	if (( $1 >= 18 ));
	then
		echo "eligible to vote"
	elif (( $1 < 0 ));
	then
		echo "enter a valid age"
	else
		echo "not eligible to vote"
	fi
}

is_eligible $1
