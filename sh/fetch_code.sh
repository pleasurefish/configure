#/bin/bash
#use repo to get code from aosp

repo init -u https://android.googlesource.com/platform/manifest
while [ $? -ne 0 ]
do
repo init -u https://android.googlesource.com/platform/manifest
done

repo sync
while [ $? -ne 0 ] 
do 
    repo sync
done
