#!/bin/bash


_now=$(date +"%m_%d_%Y")
_file="./ircloggerbot_$_now.log"


$(($(stat -c %s ircloggerbot.py)/1000000))

/usr/bin/python ./ircloggerbot.py > "$_file"


/bin/kill `ps ux | awk '/ircloggerbot.py/ && !/awk/ {print $2}'`


exit
