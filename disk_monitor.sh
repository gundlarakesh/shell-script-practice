#!/bin/bash

# This script is to moniter the disk usage

#set -x
set -e
#set -o

t=80

df -h --output=source,pcent,target | tail -n +2 | while read -r source used_p mount; do
	percent=${used_p%\%}

	if [ "$percent" -gt "$t" ];then
		echo "Warning: $source is utilized above 80%(actual usage:$percent%), please take any action!"
	fi
done
#df --help
