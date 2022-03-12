#!/bin/bash
date=$(date '+%F-%T')

mkdir -p $2
touch $2/log-$date.log
cat $1 >> $2/log-test.log
