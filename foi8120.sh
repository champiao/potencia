#!/bin/bash
IP='$1'
/home/rassis/.potHW8120.sh $1 | tee /tmp/potencia.txt
cat /tmp/potencia.txt | grep RxPower > /tmp/results.txt
sed -i 2d /tmp/results.txt
xclip -sel clip /tmp/results.txt
rm -rf /tmp/potencia.txt /tmp/results.txt
