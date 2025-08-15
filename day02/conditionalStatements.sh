#!/bin/bash


read -p "guess a number: " num

if [[ $num == 10 ]];
then 
	echo "you guessed the righ number"
else
	echo "you failed to guess the right number"
fi

# voting age eligibility test

read -p "Enter your age: " age

if (( $age >= 18 ));
then
	echo "You are eligible to vote!"
elif (( $age <= 0 ));
then 
	echo "Please enter a valid age!"
else
	echo "you are not eligible to vote!"
fi
