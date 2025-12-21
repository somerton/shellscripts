#!/bin/bash
echo "###START###"
#set -x
#find -type d -not -perm 775 -o -type f -not -perm 664
find -type d -perm 750 -o -type f -perm 750
