#!/bin/bash

# Run ffmpeg command
ffmpeg -stream_loop -1 -re -i /usr/local/flv/file.flv -fflags +genpts -r 30 -c copy -f flv rtmp://127.0.0.1:1936/live/stream

# Start NGINX
nginx -g 'daemon off;'
