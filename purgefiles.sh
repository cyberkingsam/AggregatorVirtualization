#!/bin/bash
path="/home/Videos/"
path1="/home/UploadedVideos/"
path2="/home/Images/"
path3="/home/UploadedImages/"
find $path -mindepth 2 -mtime +4  -type f -exec rm -r {} \;
find $path1 -mtime +3 -type f -exec rm -r {} \;
find $path2 -mindepth 2 -mtime +4  -type f -exec rm -r {} \;
#find $path3 -mtime +3 -type f -exec rm -r {} \;
