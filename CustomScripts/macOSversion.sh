#!/bin/bash

#script adapted from wardsparadox on GitHub for Hello-IT to work on the release version of Hello-IT
#tooltip function doesn't work, but it correctly reports the macOS version

osversion="$(sw_vers | grep "ProductVersion" | awk '{print $2}')"
buildversion="$(sw_vers | grep "Build" | awk '{print $2}')"

echo "hitp-title: macOS Version: $osversion"
echo "hitp-tooltip: macOS Build: $buildversion"
echo "hitp-enabled: YES"

exit 0
