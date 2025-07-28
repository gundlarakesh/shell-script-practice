#!/bin/bash

num1=$1
num2=$2

# Input validations
if [ -z "$num1" ] || [ -z "$num2" ]; then
    echo "Pass valid numbers"
    echo "Usage: $0 <num1> <num2>"
    exit 1
elif [ "$num1" -ge "$num2" ]; then
    echo "num1 should be less than num2"
    exit 1
fi

# Prime checker function
is_prime() {
    num=$1
    if [ "$num" -le 1 ]; then
        return 1
    fi
    for ((i = 2; i * i <= num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1
        fi
    done
    return 0
}

# Loop through numbers and print primes
prime_numbers(){
    local c=0
    for (( j = num1; j <= num2; j++ )); do
        if is_prime "$j"; then
            echo "$j"
            ((c++))
        fi
    done
    echo "there are $c prime numbers between $num1 and $num2"
}

prime_numbers
