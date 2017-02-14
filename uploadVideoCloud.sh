#!/bin/bash
path=/home/UploadedVideos
inotifywait -m -r $path -e create -e moved_to |
while read path action file; do
       	 echo "The file '$file' appeared in directory '$path' via '$action'"
	 newname=`echo "$file" | sed -e 's/\(S[0-9][0-9]E[0-9][0-9]\).*\.mp4/\1.mp4/'`
	 echo "$path$newname"
	 if grep -q mp4 "$path$newname"; 
	 then
		echo $path$newname
		nohup sh /home/Aggregator/test.sh $path$newname

 	 fi

done
