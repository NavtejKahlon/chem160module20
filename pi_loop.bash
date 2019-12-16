#!/bin/bash
for i in $*
do 
	echo -n "Ntrials = $i: "
	./pi.py $i
done

