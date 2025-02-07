#!/bin/bash
VIDEO_URL=$1
STREAM_URL="rtmps://dc4-1.rtmp.t.me/s/YOUR_STREAM_KEY"

ffmpeg -re -i "$(yt-dlp -f best "$VIDEO_URL" -g)" \
-c:v libx264 -preset fast -b:v 2500k -maxrate 2500k -bufsize 5000k \
-c:a aac -b:a 128k -f flv "$STREAM_URL"
