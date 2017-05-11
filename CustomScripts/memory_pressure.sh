#!/bin/bash

#script to show memory pressure, update the state to warning or alert, and print results to Hello-IT

RAMpressure=$(memory_pressure | tail -1 | sed 's/System-wide memory free percentage: //'| sed 's/%//')
#RAMstate=$("$RAMpressure" sed 's/%//')

if [[ $RAMpressure -le 10 ]]; then
  echo "hitp-state: alert"
elif [[ $RAMpressure -ge 60 ]]; then
  echo "hitp-state: ok"
else
  echo "hitp-state: warning"
fi
echo "hitp-title: Memory Free: $RAMpressure%"

exit 0
