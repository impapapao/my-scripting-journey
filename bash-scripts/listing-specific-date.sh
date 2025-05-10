#!/bin/bash

#user input
read -p "Enter date (e.g Jan:)" listmonth
read -p "Enter day (e.g 1:)" listday

#Check if there's a input
if [[ -z "$listmonth" || -z "$listday" ]]; then
    echo "User did not input anything."
    exit 1
fi
#listing of specific Month and Day
ls -ltr | awk  -v month="$listmonth" -v day="$listday" '$6 == month && $7 == day {print $0}'  