#!/bin/sh

TARGET_DEVICE=/dev/video0
TARGET_SIZE=320x280

while [ 1 ]
do
  UVCVIEW_PROCESS=$(pidof luvcview)
  if [ -e $TARGET_DEVICE ]; then
    if [ "$UVCVIEW_PROCESS" = "" ]; then
      luvcview -s $TARGET_SIZE -d $TARGET_DEVICE &
    fi
  else
    if [ "$UVCVIEW_PROCESS" != "" ]; then
      kill $UVCVIEW_PROCESS
    fi
    echo waiting connection of $TARGET_DEVICE `date`
  fi
  sleep 1
done
