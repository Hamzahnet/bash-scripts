#!/bin/bash

LOG_FILE="/tmp/test_auth.log"

echo "===== Failed Login Attempts ====="
echo "Scanning: $LOG_FILE"
echo ""

if [ ! -f "$LOG_FILE" ]; then
    echo "Log file not found"
    exit 1
fi

FAILED=$(grep "Failed password" $LOG_FILE | wc -l)
echo "Total failed attempts: $FAILED"
echo ""
echo "===== Top Attacking IPs ====="
grep "Failed password" $LOG_FILE | grep -oP '(\d+\.){3}\d+' | sort | uniq -c | sort -rn | head -10
