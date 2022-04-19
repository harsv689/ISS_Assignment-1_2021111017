#!/bin/bash
read -r line
len=${#line}
echo $line| tr 'a-zA-Z' 'b-zA-Za'


