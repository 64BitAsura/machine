export LANG=C
xset -dpms; 
xset s off &i
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
exec i3
