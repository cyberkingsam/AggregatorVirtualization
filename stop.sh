#!/bin/bash
var=$1;
echo "ffmpeg -i $1"
PID=`ps -eaf | grep "ffmpeg -i $1" | grep -v grep | awk '{print $2}'`
if [ "" !=  "$PID" ]; then
  echo "killing $PID"
  kill -9 $PID
fi

