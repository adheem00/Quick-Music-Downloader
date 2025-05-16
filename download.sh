#!/bin/bash

# /mnt/c/Users/zizan/Downloads/code/bash/projects


cd /mnt/c/Users/zizan/Downloads/Playlist

read -p "Enter the YouTube URL to download as MP3: " URL
echo "Download starting..."


yt-dlp -x --audio-format mp3 "$URL" 2>&1 | grep ".*Destination: .*\.mp3"
echo "Done!"

explorer.exe .
