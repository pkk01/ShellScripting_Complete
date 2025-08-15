#!/bin/bash

# This is basics for Shell Scripting

# 1. Multi line comments

<< comment
line one which will not be executed

another line which will not be executed
comment

# Variable

name="Bond... James Bond"

echo "The name is $name & date is $(date)"

# to read the input

echo "enter your name: "

read username

echo "hello, $username"

# to promt 

read -p "Enter username: " username1

echo "hello, $username1"



