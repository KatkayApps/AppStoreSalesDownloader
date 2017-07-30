#!/bin/sh

# Copyright (C) 2017 by Magno Urbano (www.katkay.com)
# Distributed under the GNU General Public License, version 3.0.
# We give no warranties and cannot be liable for any damage on your system
# If you use this you will be using this at your own risk
#
#
# to use this, type ./sales.sh INITIAL_DATE FINAL_DATE
# dates should be in the format YYYYMMDD
# example: ./sales.sh 20170701 20170730
# to download all sales report from July 1, 2017 to July 30, 2017

# converting all dates to seconds
SECONDSPERDAY=86400
command="java -jar Reporter.jar p=Reporter.properties m=Robot.XML Sales.getReport 80067827, Sales, Summary, Daily, "

# and then to YYMMDD
currentDateTs=$(date -jf "%Y%m%d" $1 "+%s")
endDateTs=$(date -jf "%Y%m%d" $2 "+%s")

# loop from initial to final date
while [ "$currentDateTs" -le "$endDateTs" ]
do
  date=$(date -j -f "%s" $currentDateTs "+%Y%m%d")
  # echo $date
  fullCommand=$command$date
  # echo $fullCommand
  eval $fullCommand
  currentDateTs=$((currentDateTs+SECONDSPERDAY))
done

# the script will download a bunch of .gz files... decompress them
for f in *.gz
do
  gzip -d $f
done
