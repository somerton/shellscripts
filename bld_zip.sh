#!/bin/sh
set -x
cat /home/developer/Documents/otxt | awk '{print "tar -uvf /home/developer/Desktop/pck.tar *"$1}' >> ~/bin/pack5.sh
chmod 777 pack5.sh
