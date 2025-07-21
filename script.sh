#!/bin/bash

while true
do
clear
pid=`ps aux | sed '1d' | sort -k 3 | tail -n 1 | sed -E 's/\s+/\t/g' | cut -f2` # Достали pid процесса
cpu=`ps aux | sed '1d' | sort -k 3 | tail -n 1 | sed -E 's/\s+/\t/g' | cut -f3` # Достали %cpu процесса
echo -e "Status"
echo "%CPU $cpu"
cat /proc/$pid/status
echo -e "\nLimits"
cat /proc/$pid/limits
echo -e "\nIO"
cat /proc/$pid/io
sleep 5
done