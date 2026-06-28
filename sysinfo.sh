#!/bin/bash


echo "===== System Information ====="
echo "Hostname: $HOSTNAME"
echo "Current User: $USER"
echo "Date: $(date)"
echo ""
echo "===== CPU Info ====="
lscpu | grep "Model name"
echo ""
echo "===== Memory Info ====="
free -h
echo ""
echo "===== Disk Usage ====="
df -h
echo ""
echo "===== Network Info ====="
ip addr show
echo ""
echo "===== Active Connections ====="
ss -tuln
