#!/bin/bash

date=$(date '+%F-%T')
./log_dump.sh /workspace/log_server/server.log /var/www/html/log/$date/ && ./log_filter.sh /var/www/html/log/$date/*.log > tmp.log && ./log_format.sh tmp.log /var/www/html/log/$date/
echo /var/www/html/log/$date/*.log >> /var/www/html/log/dump_list.txt
echo /var/www/html/log/$date/*.json >> /var/www/html/log/json_list.txt

tar -czvf log.tar.gz /workspace/Linux-project/
