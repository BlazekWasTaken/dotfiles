#!/bin/bash

is_active=$(systemctl is-active ovpn_pl)

if [ $is_active = "active" ] ; then
	echo 
else
	echo 
fi
