#!/bin/bash

#script to report the capacity and avialable storage space of the mounted drive.

storagecmd="$(df -H / | grep "/" | awk '{print $3" / "$2 " Used,",$5 " used"}')"
total="$(df / | grep "/" | awk '{print $2}' | sed 's/G//')"
used="$(df / | grep "/" | awk '{print $3}' | sed 's/G//')"
percentused="$(printf "%.0f\n" "$(bc -l <<< "( $used / $total) * 100")")"


if [[ "$percentused" -gt 90 ]]; then
  echo "hitp-state: ${STATE[2]}"
elif [[ "$percentused" -lt 70 ]]; then
  echo "hitp-state: ${STATE[0]}"
else
  echo "hitp-state: ${STATE[1]}"
fi
echo "hitp-title: Storage: $storagecmd"
echo "hitp-enabled: YES"

exit 0
