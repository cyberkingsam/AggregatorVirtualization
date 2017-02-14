#!/bin/bash
parent=/home/Videos
newfolder=/home/UploadedVideos
while true
do
sleep 40;
if [ ! -d $newfolder ]; then
echo "not exist"
mkdir "$newfolder"
fi
for folder in "$parent"/*; do
if [ -d $folder ]; then
foldername="${folder##*/}"
for subfolder in "$parent"/"$foldername"/*; do
if [ -d $subfolder ]; then
subfoldername="${subfolder##*/}"
for file in "$parent"/"$foldername"/"$subfoldername"/*; do
filename="${file##*/}"
filename1="${filename%.*}"
echo $filename1
echo $filename
echo  $parent"/"$foldername"/"$subfoldername"/"$filename1.avi
newfilename="$foldername"_"$subfoldername"_"$filename1"
 N | ffmpeg -i $parent"/"$foldername"/"$subfoldername"/"$filename1.avi  -c:v libx264 -crf 19 -preset slow -c:a aac -strict experimental -b:a 192k -ac 2 $newfolder"/"$newfilename.mp4
 #rm $parent"/"$foldername"/"$subfoldername"/"$filename1.avi
done
fi
done
fi
done
done
