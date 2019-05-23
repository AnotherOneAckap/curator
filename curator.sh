#!/bin/sh

LOG_FILE=~/curator.log

before_exit()
{
	echo $(date) Stopped >> $LOG_FILE
	exit 0
}

trap 'before_exit' 2

while [ 1 ]
do
	TEXT=''
	while [ -z "$TEXT" ]
	do
		TEXT=$(zenity --entry --text="So what are you doing now dude?" 2>/dev/null)
	done

	echo $(date) $TEXT >> $LOG_FILE
	
	sleep 1800
done
