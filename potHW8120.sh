#!/bin/bash
HOST="$1"
expect -c "
spawn telnet 192.168.$HOST
expect \"Login:\"
send \"root\\r\\r\"
expect \"Password:\"
send \"adminHW\\r\"
expect \"WAP>\"
send \"display optic\\r\"
expect \"WAP>\"
send \"ping uol.com.br\\r\"
expect eof
"