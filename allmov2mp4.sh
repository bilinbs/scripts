#!/bin/sh
for movfile in *.MOV; do
	mp4file=${movfile%.MOV}.mp4; 
	ffmpeg -i "$movfile" "$mp4file" 
done
