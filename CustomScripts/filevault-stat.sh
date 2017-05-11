#!/bin/bash

#Hello IT script to verify FileVault is enabled

fvStatus=$(fdesetup status)

if [[ $fvStatus = "FileVault is Off." ]]; then
  echo "hitp-enabled: YES"
  echo "hitp-hidden: NO"
  echo "hitp-state: warning"
  echo "hitp-title: FileVault is OFF"
else
  echo "hitp-enabled: YES"
  echo "hitp-hidden: NO"
  echo "hitp-state: ok"
  echo "hitp-title: FileVault is ON"
fi


exit 0
