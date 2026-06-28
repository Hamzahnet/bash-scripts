#!/bin/bash

echo "===== Port Availiability Checker ====="
echo ""

TARGET=$1

if [ -z "$TARGET" ]; then
    echo "Usage: ./portcheck.sh <ip address>"
    exit 1
fi


echo "Scanning common ports on: $TARGET"
echo ""

PORTS=(21 22 23 25 53 80 443 445 3306 8080 8443)

for PORT in "${PORTS[@]}"; do
    (echo >/dev/tcp/$TARGET/$PORT) 2>/dev/null
    if [ $? -eq 0 ]; then
        echo "Port $PORT -- OPEN"
    else
        echo "Port $PORT -- closed"
    fi
done
