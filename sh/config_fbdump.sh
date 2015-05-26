#!/bin/sh
i=0
FILE_NAME=
if [ x$1 = x ];then
    echo "usage : $0 count"
else
    COUNT=$1
fi

echo "count is $COUNT"

while [ $i -le $COUNT ]
do
    i=`expr $i + 1`;
    FILE_NAME=$i.ppm
    FRAMEBUFFER=/dev/fb0 fbdump  > $FILE_NAME
done
