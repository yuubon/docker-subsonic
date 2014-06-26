#!/bin/sh

sudo docker run -p 4040:4040 \
	-v ~/public_music:/mnt/music \
	-d yuubon/subsonic

