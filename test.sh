#!/bin/bash
pathfile=$1
	echo $pathfile >>logsfor
	sleep 30;
	result=$(sudo mono /home/Aggregator/DynaptVA.VideoUploader.exe $pathfile)
	echo $result
	 if [ "$result" = "Video not uploaded" ];then 
  		mono /home/Aggregator/DynaptVA.VideoUploader.exe $pathfile
	else
		echo "uploaded" >>logsVideos
	fi

