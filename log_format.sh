#!/bin/bash

date=$(date '+%F-%T') 
touch $2/log-$date.json

cat $1 | while read line
do 
date=$(echo $line | awk '{print ($1" "$2" ")}' | cut -c2-20)
type=$(echo $line | awk '{print ($3)}')
error_msg=$(echo $line | awk '{print ($5$6$7$8$9$10)}')
echo {\"date\":\"$date\"', '"\"type\":\"$type\",\"message\":\"$error_msg\""}
done
