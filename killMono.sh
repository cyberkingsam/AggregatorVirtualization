#!/bin/sh

echo $(date) "Kill MONO Starts Executing." >> /var/log/connectionlog
PROCESS=$(ps aux | grep -v grep  | grep "AggregatorUtility.exe" | awk '{print $2}' )
echo $PROCESS >> /var/log/connectionlog
sudo kill -9 $PROCESS
nohup mono  /home/Aggregator/AggregatorUtility.exe &
