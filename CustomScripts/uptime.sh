#!/bin/bash
#check uptime and print values

# Alert if uptime greater than alertcount
alertcount=15
# Warn if uptime greater than warningcount
warningcount=7

#calculate time since last reboot

rebootdate="$(date -r "$(sysctl -n kern.boottime | awk '{print $4}' | sed 's/,//')" "+%+")"
lastboot="$(date -r "$(sysctl -n kern.boottime | awk '{print $4}' | sed 's/,//')" "+%s")"
now="$(date +"%s")"
diff="$(( (now - lastboot) / 86400 ))"
if [[ $diff -lt $warningcount ]]; then # Diff < 7
  echo "hitp-title: Time since last reboot: $diff day(s)."
  echo "hitp-state: ${STATE[0]}"
elif [[ $diff -gt $alertcount ]]; then # Diff > 15
  echo "hitp-title: Time since last reboot: $diff day(s)."
  echo "hitp-state: ${STATE[2]}"
else # 7 <= Diff < 15
  echo "hitp-title: Time since last reboot: $diff day(s)."
  echo "hitp-state: ${STATE[1]}"
fi

exit 0
