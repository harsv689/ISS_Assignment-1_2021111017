#!/bin/bash

while IFS = read -r l
do
    if [-z "$l"]
    then
    continue
    else
    echo "$`cut -d "~" -f2- <<< "$l"` Once said,\""$`echo $l|cut -d "~" -f1`"\""
    fi
done < "$1" > speech.txt