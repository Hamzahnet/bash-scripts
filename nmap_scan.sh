#!/bin/bash

TARGET=$1
echo "Scanning $TARGET..."
nmap -sV -A $TARGET > scan_results_$(date +%Y%m%d).txt
echo "Scan complete. Results saved."
