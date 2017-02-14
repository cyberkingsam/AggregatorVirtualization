#!/bin/bash
source=$1
if ps ax | grep -v grep | grep "ffmpeg -i $source -vcodec libx264 -preset slow -r 15 -b:v 1500k -vprofile baseline -g 1 -ar 44100 -ac 1 -f flv" > /dev/null
then
echo "ffmpeg running"
else
echo "ffmpeg not running"

fi





