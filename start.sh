#!/bin/bash

# Run ffmpeg command
ffmpeg -stream_loop -1 -re -i /usr/local/flv/file.flv -fflags +genpts -r 30 -c copy -f flv rtmp://rtmp-80oe.onrender.com:1936/live/stream

# Start NGINX
nginx -g 'daemon off;'
