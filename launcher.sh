#!/bin/sh
RED='\033[0;31m'
ORA='\033[0;33m'
GRE='\033[0;32m'
CYA='\033[0;36m'
BLU='\033[0;34m'
PUR='\033[0;35m'
NOC='\033[0m'
function delay {
sleep .7
}
echo "$RED running $BLU$0\n"
delay
delay
echo "$RED\c"
delay
for i in $( ls *.sh ); do
	echo "\t$i"
	echo "$GRE\c"
	cat -v $i
	delay
	echo "$RED\n"
done
echo "\tgetting status report\n"
echo "$NOC\c"
sh status.sh
echo "$RED\c"
sh loop.sh
