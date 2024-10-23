#!/bin/bash

DATA=$(date)
SERVICE="Nginx"
status=$(systemctl is-active nginx)

if [ $status == active ]; then
        IS="IS ONLINE"
        OUTPUT_FILE="/var/log/logNginx/online.log"
else
        IS="IS OFFLINE"
        OUTPUT_FILE="/var/log/logNginx/offline.log"
fi

echo "$DATA - $SERVICE - $status - $IS" >> "$OUTPUT_FILE"
