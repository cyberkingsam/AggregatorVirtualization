#!/bin/bash
source=$3 
aggregator=$1 
camera=$2
aggregatorIP=$4
output="rtmp://52.187.67.18/live/$aggregator^$camera"
bitrate="2500k"
framerate="15"
resolution="640x480"
crontab -l > $camera
#echo new cron into cron file
echo "@reboot nohup sh /home/Aggregator/pythonEventBased.sh $aggregator $aggregatorIP $camera  > /dev/null 2>&1 &" >> $camera
echo "@reboot nohup sh /home/Aggregator/ffmpegContinuous.sh $source $output $bitrate $framerate $resolution > /dev/null 2>&1 &" >> $camera
#install new cron file
crontab $camera
file="/etc/init.d/$camera.sh"
if [ -f "$file" ]
then
        echo "found" >>/logsfile
else
cat <<?>> /etc/init.d/$camera.sh
nohup sh /home/Aggregator/pythonEventBased.sh $aggregator $aggregatorIP $camera  > /dev/null 2>&1 &
nohup sh /home/Aggregator/ffmpegContinuous.sh $source $output $bitrate $framerate $resolution > /dev/null 2>&1 &
?
chmod 0755 /etc/init.d/$camera.sh
fi
sudo mkdir "/home/Videos/"$aggregator"/"
sudo mkdir "/home/Videos/"$aggregator"/"$camera
sudo mkdir "/home/Images/"$aggregator"/"
sudo mkdir "/home/Images/"$aggregator"/"$camera
sudo chmod -R 777 /home
nohup ffmpeg -i "$source" -vcodec libx264 -preset slow -b:v 2500k -vprofile baseline -g 1 -ar 44100 -ac 1 -f flv $output &>/home/Aggregator/ffmpegLog & 
sleep 10;
#python /home/project/motion_detector.py $aggregator $camera $aggregatorIP
sh  /home/Aggregator/pythonEventBased.sh $aggregator $aggregatorIP $camera </dev/null >/dev/null 2>/logs/python.log &
sh convertAviToMp4.sh </dev/null >/dev/null 2>/logs/avitomp4.log &
#sh scriptCheck.sh </dev/null >/dev/null 2>/logs/scriptchecks.log &
sh /home/Aggregator/ffmpegContinuous.sh $source $output $bitrate $framerate $resolution </dev/null >/dev/null 2>/logs/ffmpeg.log &
