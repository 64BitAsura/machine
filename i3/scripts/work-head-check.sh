#!/bin/bash
warn_blink=$(set|grep GIT_WARN)
warn_color="#F44336"
warn_bgcolor="#000000"

if [ warn_blink = "OFF" ]; then
export GIT_WARN="ON"
warn_color="#F44336"
warn_bgcolor="#000000"
else
export GIT_WARN="OFF"
warn_bgcolor="#F44336"
warn_color="#000000"
fi

status=$(cd ~/Work/rain &&
    git fetch > /dev/null && git log --oneline @..origin/master | wc -l | awk -v warn_color="$warn_color" -v warn_bgcolor="$warn_bgcolor" '/^[0-9]+/{ahead_count = $0}; END { if(ahead_count > 3){print "<span bgcolor=\"'"$warn_bgcolor"'\" color=\"'"$warn_color"'\"> Rebase Now</span>"} else {print "<span color=\"#ddff80\"> on level</span>"}}')

echo $status

echo ""

echo ""

echo "#FAFAFA"
