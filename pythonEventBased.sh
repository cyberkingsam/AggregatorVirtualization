#!/bin/bash
aggregatorId=$1
aggregatorIp=$2
cameraId=$3
while true;
do 
if ps ax | grep -v grep | grep "python /home/project/motion_detector.py -ag $aggregatorId --ip $aggregatorIp -c $cameraId" > /dev/null
then
echo "python running"
else
#echo "not running"
nohup python /home/project/motion_detector.py -ag $aggregatorId --ip $aggregatorIp -c $cameraId &>/home/Aggregator/pythonLog &
fi
sleep 10;
done;
