#!/bin/bash
cd ~/Desktop/Module20/chem160module20/h20
for i in h2o0??.gro
do
counts=$(wc $i)
echo "Counts for file $i: $counts"
done

