#!/bin/sh
C=('\033[0;31m' '\033[0;33m' '\033[0;32m' '\033[0;36m' '\033[0;34m' '\033[0;35m')
DIR=data
VAR=0
function setcolor {
VAR=$(( $VAR + 1 ))
echo "${C[ $VAR ]}\c"
if (( $VAR > 5 )) ; then
	VAR=-1
fi
}
function waitandclear {
sleep .2;
echo "[16A"
setcolor
}
while [ 1 ] ; do
	echo "$(cat $DIR/sn00)"
	waitandclear
	echo "$(cat $DIR/sn01)"
	waitandclear
	echo "$(cat $DIR/sn02)"
	waitandclear
	echo "$(cat $DIR/sn03)"
	waitandclear
done
