#!/bin/bash
while true;
do 
if ps ax | grep -v grep | grep "ffmpeg -i rtsp://admin:admin@192.168.0.250:554/live -vcodec libx264 -preset slow -r 10 -b:v 2000k -vprofile baseline -g 1 -ar 44100 -ac 1 -f flv rtmp://52.187.67.18/live/7ce76956-b9bd-4f5d-b23b-6a33ce174dd4^0ef1f7e4-752f-43ba-8d44-32eb6ee8c428" > /dev/null
then
echo "ffmpeg running"
else
nohup ffmpeg -i rtsp://admin:admin@192.168.0.250:554/live -vcodec libx264 -preset slow -r 10 -b:v 2000k -vprofile baseline -g 1 -ar 44100 -ac 1 -f flv rtmp://52.187.67.18/live/7ce76956-b9bd-4f5d-b23b-6a33ce174dd4^0ef1f7e4-752f-43ba-8d44-32eb6ee8c428 &>/home/Aggregator/pythonLog &
fi

if ps ax | grep -v grep | grep "ffmpeg -i rtsp://192.168.0.245:554/12 -vcodec libx264 -preset slow -s 1080*720 -r 10 -b:v 1500k -vprofile baseline -g 1 -ar 44100 -ac 1 -f flv rtmp://52.187.67.18/live/7ce76956-b9bd-4f5d-b23b-6a33ce174dd4^ac31a351-abaa-449a-bab1-f966de690549" > /dev/null
then
echo "python running"
else
nohup ffmpeg -i rtsp://192.168.0.245:554/12 -vcodec libx264 -preset slow -s 1080*720 -r 10 -b:v 1500k -vprofile baseline -g 1 -ar 44100 -ac 1 -f flv rtmp://52.187.67.18/live/7ce76956-b9bd-4f5d-b23b-6a33ce174dd4^ac31a351-abaa-449a-bab1-f966de690549  &>/home/Aggregator/pythonLog &
fi

if ps ax | grep -v grep | grep "ffmpeg -i rtsp://admin:admin@192.168.0.108/11 -vcodec libx264 -preset slow -s 1080*720 -r 10 -b:v 1500k -vprofile baseline -g 1 -ar 44100 -ac 1 -f flv rtmp://52.187.67.18/live/7ce76956-b9bd-4f5d-b23b-6a33ce174dd4^52437df9-cb48-4528-bac5-a6815e12806b" > /dev/null
then
echo "python running"
else
nohup ffmpeg -i rtsp://admin:admin@192.168.0.108/11 -vcodec libx264 -preset slow -s 1080*720 -r 10 -b:v 1500k -vprofile baseline -g 1 -ar 44100 -ac 1 -f flv rtmp://52.187.67.18/live/7ce76956-b9bd-4f5d-b23b-6a33ce174dd4^52437df9-cb48-4528-bac5-a6815e12806b &>/home/Aggregator/pythonLog &
fi

if ps ax | grep -v grep | grep "ffmpeg -i rtsp://admin:admin@192.168.0.108/11 -vcodec libx264 -preset slow -s 1080*720 -r 10 -b:v 1500k -vprofile baseline -g 1 -ar 44100 -ac 1 -f flv rtmp://52.187.67.18/live/7ce76956-b9bd-4f5d-b23b-6a33ce174dd4^c217fc19-a9c5-4ca7-9b5b-8272a320fcb2" > /dev/null
then
echo "python running"
else
nohup ffmpeg -i rtsp://admin:admin@192.168.0.108/11 -vcodec libx264 -preset slow -s 1080*720 -r 10 -b:v 1500k -vprofile baseline -g 1 -ar 44100 -ac 1 -f flv rtmp://52.187.67.18/live/7ce76956-b9bd-4f5d-b23b-6a33ce174dd4^c217fc19-a9c5-4ca7-9b5b-8272a320fcb2  &>/home/Aggregator/pythonLog &
fi
sleep 10;
done;

