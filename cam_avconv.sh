#!/bin/bash

KEY=vu2c-k8z1-gjmw-0h29
URL=rtmp://a.rtmp.youtube.com/live2

while true ; do
  avconv -ar 44100 -ac 2 -f s16le -i /dev/zero  -f video4linux2 -s 640x360 -r 10 -i /dev/video0 -f flv "$URL/$KEY"
  sleep 3
done
