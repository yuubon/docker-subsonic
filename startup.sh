#!/bin/sh

/usr/bin/subsonic \
     --max-memory=150 \
     --home=/mnt/state \
     --port=4040 \
     --default-music-folder=/mnt/music \
     --default-podcast-folder=/mnt/podcasts


sleep 5
tail -f /mnt/state/subsonic_sh.log     

