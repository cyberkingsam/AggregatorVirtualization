#!/bin/bash
aggregatorId=$1
cameraId=$2
cameraUrl=$3
rtmp="rtmp://52.187.67.18/live/$aggregatorId^$cameraId"
PID=`ps -eaf | grep $rtmp | grep -v grep | awk '{print $2}'`
kill -9 $PID

