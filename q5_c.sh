#!/bin/bash
read -r line
len=${#line}
for ((i=(len/2)-1;i>=0;i--))
do
    r=$r${line:$i:1}
done
for ((i=(len/2);i<=$((len));i++))
do
    r=$r${line:$i:1}
done

echo $r

