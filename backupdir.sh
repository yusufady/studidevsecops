#!/bin/bash

user=$(whoami)
exist=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

#2> /dev/null discard any data directed to it (tar: Removing leading `/' from member names)

tar -czf $output $exist 2> /dev/null
echo "Backup of $exist completed!"
ls -ltr $output
