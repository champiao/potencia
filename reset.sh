#!/bin/bash
HOST="$1"
expect -c "
#TESTE
spawn telnet 192.168.$HOST
expect \"Login:\"
send \"Eproot\\r\"
expect \"Password\"
send \"adminEp\\r\"
expect \"WAP>\"
send \"reset\\r\"
expect eof
"
