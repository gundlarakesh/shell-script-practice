#!/bin/bash


# pass two cli args it perform few arithmetic operations

#set -x # uncomment to run in debug mode
set -e


a=$1
b=$2

if [[ "$a" =~ ^[+-]?[0-9]+$ && "$b" =~ ^[+-]?[0-9]+$ ]]; then
	echo "addition of $a and $b is $(( a + b ))"
	echo "subtraction of $a and $b is $(( a - b ))"
	echo "multiplication of $a and $b is $(( a * b ))"
	echo "division of $a and $b is $(( a / b ))"
        echo "remainder of $a and $b is $(( a % b ))"
else
	echo "please provide numbers"
fi

