#!/bin/sh

MAX=$(wc -l source | tr -d "source \t")
STEP=0
while [ "$STEP" -lt "$MAX" ] ; do
	echo "$(head -n $STEP source | tail -n 1)"
	STEP=$((STEP+1))
	sleep .02
done

