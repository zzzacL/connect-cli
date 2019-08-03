#!/usr/bin/env bash
LIST=$(nmcli device wifi list)
echo "$LIST"
read -p "> SSID: " SSID
read -sp "> Password, if none, hit Enter:" PASS
echo -e "\nTrying to connect..."

if [ -z "$PASS" ]
then
	nmcli device wifi connect "$SSID"
else
	nmcli device wifi connect "$SSID" password "$PASS"
fi
