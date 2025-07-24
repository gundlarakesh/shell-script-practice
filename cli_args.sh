#!/bin/bash

#########################
# Author: Rakesh Gundla
#
# Date: 24-07-2025
#
# version: v1
#########################



# set -x # uncomment to run in debug mode
set -e # comment this line to ignore the errors

echo "your first argument is $0 'name of the script file'"
echo "2nd args is $1"
echo "Total no of args passed $#"
echo "all args as single sting '$@'"
echo "$*"
