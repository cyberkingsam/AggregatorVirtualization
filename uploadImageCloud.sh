#!/bin/bash
path=/home/Images
inotifywait -m -r $path -e create -e moved_to |
while read path action file; do
         echo "The file '$file' appeared in directory '$path' via '$action'"
         newname=`echo "$file" | sed -e 's/\(S[0-9][0-9]E[0-9][0-9]\).*\.png/\1.png/'`
         echo "$path$newname"
#	echo "$path$file"
       #  if grep -q png "$path$newname";
       #  then
		result=$(sudo mono /home/Aggregator/DynaptVA.VideoUploader.exe $path$file)
                echo $result >>image.logs
	# fi

done
