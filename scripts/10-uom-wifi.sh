#!/bin/sh -e

# Activation script for UoM_WIFI
# Put this in /etc/NetworkManager/dispatcher.d/

SSID='UoM_WIFI'

# You should change the ACTIVATION_SCRIPT variable to point to the Python file
# that does the actual activation

# Change me
ACTIVATION_SCRIPT="/home/karl/dev/uom-wifi-activator/main.py"

case $2 in
	"up" )	if [ $CONNECTION_ID = $SSID ]; then
			/usr/bin/env python2 $ACTIVATION_SCRIPT
		fi
		;;
esac
exit 0
