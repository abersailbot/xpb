#/bin/bash

#this script will grab the time from the GPS and set the system clock to it
#its probably going to be a second or two out, but NTP with GPSD should take care of that

timestamp=`gpspipe -w -n 5 | grep -o "time\":\"[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}T[0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}" | tail -1 | cut -b 8-`

sudo date --set=$timestamp


