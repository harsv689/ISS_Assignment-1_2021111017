#!/bin/bash

awk '!a[$0]++' $1 > output.txt