#!/bin/bash
counter=0
filename=h2o000.gro
while [ -f $filename ]
do
	echo $filename
	wc >> lines.out
	let counter+=5
	filename= printf "h2o%03d.gro" $counter
done

