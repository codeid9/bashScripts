#!/bin/bash

echo '-------------------------
+  System Health Check  +
-------------------------'
      

ip a


echo "---------------------------------------"

df -h

echo "---------------------------------------"

uptime



CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
RAM=$(free | grep Mem | awk '{print ($3/$2) * 100.0}')
DISK=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

echo "CPU Usage: $CPU%"
echo "RAM Usage: $RAM%"
echo "Disk Usage: $DISK%"

if (( $(echo "$CPU > 85" | bc -l) )); then
    echo "WARNING: CPU usage above 85%"
fi

if (( $(echo "$RAM > 85" | bc -l) )); then
    echo "WARNING: RAM usage above 85%"
fi

if [ "$DISK" -gt 85 ]; then
    echo "WARNING: Disk usage above 85%"
fi
