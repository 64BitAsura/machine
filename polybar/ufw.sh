#!/bin/sh
if [ ! -z "$(systemctl status ufw | grep -i "Active: inactive")" ]; then
    echo "%{F#E00}%{T6}%{T-}%{F-} Down"
  else
    echo "%{T6}%{T-}"
  fi
