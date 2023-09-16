#!/bin/sh

SAVEIFS=$IFS

LIST=`ls`

IFS=$(echo -en "\n\b")

cnt=0
for i in *.smi
do
    cnt=`expr $cnt + 1`
    echo $cnt
    echo $i
    if [ $cnt -lt 10 ]; then
        #echo "less than 10"
        mv "$i" '[Moozzi2] Future GPX Cyber Formula - 0'$cnt' (BD 1508x1080 x265-10Bit Flac).smi'
    else
        mv "$i" '[Moozzi2] Future GPX Cyber Formula - '$cnt' (BD 1508x1080 x265-10Bit Flac).smi'
    fi
done

IFS=$SAVEIFS
