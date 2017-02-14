#!/bin/bash
source=$3
aggregator=$1
camera=$2
sudo mkdir "/home/Videos/"$aggregator"/"
sudo mkdir "/home/Videos/"$aggregator"/"$camera 
sudo mkdir "/home/Images/"$aggregator"/"
sudo mkdir "/home/Images/"$aggregator"/"$camera 
sudo chmod -R 777 /home
