#!/bin/bash

echo "==== SYSTEM HEALTH CHECK ===="

echo "[ CPU Usage ]"
top -bn1 | grep "Cpu(s)"

echo ""
echo "[ Memory Usage ]"
free -h

echo ""
echo "[ Disk Usage ]"
df -h

echo ""
echo "[ Top 5 CPU-consuming processess ]"
ps -eo pid, comm, %cpu --sort=-%cpu | head -6

echo ""
echo "[ Hardware Info]"
lshw -short 2>/dev/null || echo "Install lshw to view hardware info"

echo "==== DONE ===="
