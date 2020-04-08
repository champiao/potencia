#!/bin/bash
HOST="$1"
expect -c "
log_user 1
spawn telnet 192.168.$HOST
expect \"Press\"
send \"\\r\"
expect \"Username:\"
send \"admin\\r\"
expect \"Password\"
send \"PaRks123#\\r\"
expect \"*\"
send \"show version\\r\"
send \"show gpon power-level\\r\"
send \"show interface pppoe1\\r\"
send \"ping 200.160.2.3 interface pppoe1\\r\"
expect \"rtt\"
send \"show gpon serial-number\\r\"
expect eof
"