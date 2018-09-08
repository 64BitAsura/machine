#!/bin/bash

status=$(cd ~/Work/rain &&
git branch | grep \* | cut -d ' ' -f2 | sed 's/\([0-9]\+\).*/\1/g' | awk '/.*/{ status =$0}; END {  if(status~/^RAIN-/){print "<span color=\"skyblue\"> "status"</span>"}else if(status~/^bugfix-/){ print "<span color=\"red\"> "status"</span>"} else {print "<span color=\"#FF6E40\"> "status"</span>"}}')

conflict=$(cd ~/Work/rain && git diff --name-only --diff-filter=U | awk '/^[0-9 a-z A-Z]+/{ stat = $0 }; END { if(stat~/^[0-9 a-z A-Z]+/){  print "<span color=\"orange\"> </span>"} }')

add=$(cd ~/Work/rain && git diff --staged | awk '/^[0-9 a-z A-Z]+/{ stat = $0 }; END { if(stat~/^[0-9 a-z A-Z]+/){  print "<span color=\"#4CAF50\"></span>"} }' )

echo $status $conflict $add

echo ""

echo ""

echo "#B388FF"
