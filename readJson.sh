#!/bin/bash
while true;
do
test=$(cat "/home/Aggregator/APIConfig.json" | jq '.AgreegatorId')
echo $test
#test=""
if [ "$test" ]; then
echo "string is not null"
else
echo "string is null"
PROCESS=$(ps aux | grep -v grep  | grep "AggregatorUtility.exe" | awk '{print $2}' )
echo $PROCESS #>> /var/log/connectionlog
#sudo kill -9 $PROCESS
fi
sleep 5;
done
