#!/bin/bash
output=/dev/null
#output=/dev/stdout

steam_server=192.168.2.106
resolution=720
fps=60

echo "Start..." > $output
while :
do
    sudo ifconfig | grep -F "inet" | grep -F "netmask" | grep -F "broadcast" >> $output
    if [ $? -eq 0 ]; then
        break
    fi
    echo "Network is not available" >> $output
    sleep 1
done
nohup moonlight stream -$resolution -fps $fps $steam_server >> $output & 
echo $? >> $output
echo "Finish..." >> $output
