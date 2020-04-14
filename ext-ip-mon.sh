#!/bin/bash

path="/path/to/file/with/last/ip"
email="Where send Notifications"

ip1=`curl ifconfig.me`
ip2=`cat < "$path"`

if [ "$ip1" != "$ip2"]
  then
  echo "$ip1" > "$path"
  echo "New IP is $ip1" | mail -s "Warninf IP was change" "$email
fi
