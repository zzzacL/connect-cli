#!/usr/bin/env bash
LIST=$(nmcli device wifi list)
echo "$LIST"
echo "SSID:"
read SSID
echo "Password, if none, hit Enter:"
read PASS
if [ -z "$PASS" ]
then
	nmcli device wifi connect "$SSID"
else
	nmcli device wifi connect "$SSID" password "$PASS"
fi
