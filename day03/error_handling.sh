#!/bin/bash


create_directory() {
	mkdir demo

}

# handiling the case if demo folder already exist

if ! create_directory; then
	echo "Then code is exit as the directory alredy exist : error handled"
	exit 1
fi

# should run only if the demo folder not exist

echo "This line should get printed onlyy once : no error handled"
