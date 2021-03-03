#!/bin/bash
HOST="$1"
expect -c "
#TESTE
spawn telnet 192.168.$HOST
expect \"Login:\"
send \"root\\r\"
expect \"Password\"
send \"adminHW\\r\"
expect \"WAP>\"
send \"reset\\r\"
expect eof
"
ping 192.168.$HOST
