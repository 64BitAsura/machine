export LANG=C
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
xset -dpms; 
xset s off &
exec i3
