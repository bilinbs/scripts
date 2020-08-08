#!/bin/sh
for mkvfile in *.mkv; do
	mp4file=${mkvfile%.mkv}.mp4; 
	ffmpeg -i "$mkvfile" -vcodec copy "$mp4file" 
done
