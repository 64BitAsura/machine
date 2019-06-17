#!/bin/sh
count=$(docker ps --format '{{.Names}}' | wc -l)
if [ ! -z "$(systemctl status docker | grep -i "Active: inactive")" ]; then
    echo "%{F#E00}%{T6}%{T-}%{F-} Down"
  else
    if [ "$count" -gt "0" ]; then
        echo "%{T6}%{T-} $count"
    else    
        echo "%{T6}%{T-}..."
    fi    
  fi
