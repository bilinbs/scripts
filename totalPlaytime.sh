#!/bin/bash
convertsecs() {
 h=$(bc <<< "${1}/3600")
 m=$(bc <<< "(${1}%3600)/60")
 s=$(bc <<< "${1}%60")
 printf "%02d hours %02d mins %05.2f sec\n" $h $m $s
}
tt=0
for f in */*.mkv; do 
	echo "Adding duration of $f"
	t=`ffprobe -show_entries format=duration -v quiet -of csv="p=0" -i $f`;
	tt=`echo $tt + $t | bc`; 
done
echo "-----------------------------------------------------------------"
tt=`convertsecs $tt`
echo "Total Duration of all the files is - $tt"
echo "-----------------------------------------------------------------"