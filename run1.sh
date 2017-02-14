#!/bin/bash
source=$1
output=$2
bitrate=$3
framerate=$4
resolution=$5
#bitrate=" -b:v 512k "
if ps ax | grep -v grep | grep "ffmpeg -i $source -vcodec libx264 -preset slow -r 15 -b:v 2500k -vprofile baseline -g 1 -ar 44100 -ac 1 -f flv " > /dev/null
then
echo "ffmpeg running"
else
ffmpeg -i $source -vcodec libx264 -preset slow -r 15 -b:v 2500k -vprofile baseline -g 1 -ar 44100 -ac 1 -f flv  $output &>/home/Aggregator/ffmpegLog &
fi

