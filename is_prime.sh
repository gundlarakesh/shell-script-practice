#!/bin/bash

# This script is to print given number is prime or not
set -e

number=$1

if [ -z "$number" ];then
    echo "please pass number"
    echo "$0 <number>"
    exit 1
fi

is_prime() {
    num=$1
    if [ "$num" -le 1 ]; then
        return 1
    fi
    for ((i=2; i*i<=num; i++)); do
        if [ $((num%i)) -eq 0 ]; then
            return 1
        fi
    done
    return 0
}

if is_prime "$number"; then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi