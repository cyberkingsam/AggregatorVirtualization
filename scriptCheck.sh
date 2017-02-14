#!/bin/bash

AggregatorId=$1
CameraId=$2
CameraUrl=$3
AggregatorIp=$4
while true
do 
if ps ax | grep -v grep | grep "python /home/project/motion_detector.py -ag $AggregatorId --ip $AggregatorIp -c $CameraId -v $CameraUrl" > /dev/null
then
echo "script running" >>/logs/pythonScript.log
else
#echo "script not running"
nohup python /home/project/motion_detector.py  -ag $aggregator --ip $aggregatorIP -c $camera -v $source > /dev/null 2>&1 &
fi
sleep 10;
done
