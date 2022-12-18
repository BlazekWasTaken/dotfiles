#!/bin/bash

is_ovpn_running=$(systemctl is-active ovpn_pl)

echo $is_ovpn_running

if [ $is_ovpn_running = "active" ] ; then 
	systemctl disable --now ovpn_pl
else
	systemctl enable --now ovpn_pl
fi
