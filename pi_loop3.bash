#!/bin/bash
if [ ! -f pi.py ]; then
echo "No pi.py"
exit 1
elif [ ! -x pi.py ]; then
echo "Not executable"
exit 1
elif [ $# -eq 0 ]; then
echo "No trials"
exit 1
else
	for nt in $*; do
		if [ ! -d $nt ]; then
			mkdir $nt
		fi
		cd $nt
		if [ -f pi.out ]; then
			rm pi.out
		fi
		for i in {1..10}; do
			.././pi.py $nt >> pi.out
		done
		echo "The file for $nt trials has $(wc pi.out) lines"
		cd ../
done
fi
