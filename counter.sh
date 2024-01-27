#!/usr/bin/bash

dir=$(pwd)
echo "Your current working directory: $dir"

for i in $(find * -type f); do 
	echo -n "$i has"
        echo -n $i | wc -c	
done

