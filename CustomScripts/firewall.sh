#!/bin/bash

#script to report Firewall status in Hello-IT

firewall=$(defaults read /Library/Preferences/com.apple.alf globalstate)

if [[ $firewall = 0 ]]; then
  echo "hitp-enabled: YES"
  echo "hitp-state: alert"
  echo "hitp-title: Firewall is OFF"
else
  echo "hitp-enabled: YES"
  echo "hitp-state: ok"
  echo "hitp-title: Firewall is ON"
fi

exit 0
