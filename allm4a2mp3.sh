#!/bin/sh
for m4afile in *.m4a; do
	mp3file=${m4afile%.m4a}.mp3; 
	ffmpeg -i "$m4afile" "$mp3file" 
done
