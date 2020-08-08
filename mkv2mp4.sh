#!/bin/sh
for mkvfile in ./Video/*.mkv; do
	mkvfile=$(echo $mkvfile | sed 's/\//\\/g');
	mp4file=${mkvfile%.mkv}.mp4; 
	ffmpeg -i "$mkvfile" -vcodec copy "$mp4file"
done
