#!/bin/bash

#Hello-IT script to display the number of software updates available

numberOfUpdates=$(defaults read /Library/Preferences/com.apple.SoftwareUpdate LastRecommendedUpdatesAvailable)

if [[ $numberOfUpdates > 0 ]]
then
  echo "hitp-enabled: YES"
  echo "hitp-hidden: NO"
  echo "hitp-title: Software Updates: $numberOfUpdates"
else
  echo "hitp-enabled: YES"
  echo "hitp-hidden: NO"
  echo "hitp-title: No Updates Available"
fi

exit 0
