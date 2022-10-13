#! /bin/bash

d=$(date +%Y-%m-%d-%H-%M)

grep -a "session opened" /var/log/auth.log | wc -l > number_connection_$d

tar -czvf number_connection_$d.tar.gz  number_connection_$d; mv number_connection_$d.tar.gz Backup/; rm number_connection_$d

##CRONTAB## 00 */1 * * * '/home/parallels/Documents/get_logs.sh' ##CRONTAB##