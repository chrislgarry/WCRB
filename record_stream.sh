#!/usr/bin/env bash
export PATH=$PATH:/usr/local/bin

ffmpeg -y -i $2 ${1}_$(date "+%Y-%m-%d_%H:%M:%S").mp3 
