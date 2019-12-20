#!/bin/sh
ssh_connections="$(ss | grep "ssh" | wc -l)"
zero="0"
if [ "$ssh_connections" -gt "$zero" ]; then
    echo "%{F#e62}%{F-} $ssh_connections"
  else
    echo ""
  fi
