#!/bin/bash

echo size_of_the_file = $(ls -l $1 | awk '{print $5}')

echo no_of_lines = $(wc -l $1 |awk '{print $1}')

echo no_of_words = $(wc -w $1 |awk '{print $1}')

awk '{print "Line No:",((1+i++)),"-",NF}' $1 >WordsPerLine.txt

tr "[[:space:] && ~]" "\n" < quotes.txt| sed 's/[[:punct:]]$//' | sort -f |uniq -ic > temporary.txt
sed '/[A-Za-z]/!d' temporary.txt > temporary1.txt
awk '{print "Word:", $2,"-",$1}' temporary1.txt > wordFreq.txt
rm temporary.txt temporary1.txt









