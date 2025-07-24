#!/bin/bash

#set -x # uncomment to run in debug mode
set -e

if [[ "$1" =~ ^[+-]?[0-9]+$ ]]; then
	if [[ $(( $1 % 2 )) == 0 ]]; then
		echo "$1 is even number"
	else
		echo "$1 is odd number"
	fi
else
	echo "$1 is not a valid number, please pass valid number"
fi
