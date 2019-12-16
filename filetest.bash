#!/bin/bash
ls $1 &> /dev/null
if [ $? -ne o ]
then
echo "ls command failed to find matching file"
else
echo "ls command found matching file"
fi

