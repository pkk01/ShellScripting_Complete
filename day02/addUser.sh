#!/bin/bash

read -p "Enter Username: " username

sudo useradd -m $username

echo "user $username added sucessfully!"
