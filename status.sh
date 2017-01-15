#!/bin/sh
DIR=data
FIL=sn00
function randwait {
VAR=$(( $RANDOM % 3 ))
VAR=$(( $VAR - 1 ))
sleep .0$VAR
}
VAL=0
while (( $VAL < 15 )) ; do

	echo "Status #$(( $VAL + 1 )):\t\c"
	NUM=0
	while (( $NUM < 51 )) ; do
		echo "$\c"
		NUM=$(( $NUM + 1 ))
		randwait
	done
	echo ""
	VAL=$(( $VAL + 1 ))
done
echo "[17A"
VAL=0
while (( $VAL < 1020 )) ; do
	echo "$(tail -c +$VAL $DIR/$FIL | head -c 1)\c"
	if (( $(( $VAL % 68 )) == 0 )) ; then
		echo ""
	fi
	sleep .001
	VAL=$(( $VAL + 1 ))
done
echo "[15A"
