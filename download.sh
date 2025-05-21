#!/bin/bash

# /mnt/c/Users/zizan/Downloads/code/bash/projects


read -p "Playlist or MusicSamples? (1, 2)" DECISION

if [ $DECISION -eq "1" ]; then
    cd /mnt/c/Users/zizan/Downloads/Playlist
    echo "Navigating to Playlist..."
elif [ $DECISION -eq "2" ]; then
    cd /mnt/c/Users/zizan/Downloads/MusicProduction/MusicSamples
    echo "Navigating to MusicSamples..."
fi


read -p "Enter the YouTube URL to download as MP3: " URL
if [ $URL -eq ""]; then
    echo "No response provided, killing process..."
    exit
fi


echo "Download starting..."


yt-dlp -x --audio-format mp3 "$URL" 2>&1 | grep ".*Destination: .*\.mp3"
echo "Done!"

explorer.exe .
