#!/bin/bash

echo "==== NETWORK INFORMATION ===="

echo "[ IP ADDRESS ]"
ip a | grep inet

echo ""
echo "[ Routing Table ]"
ip route

echo ""
echo "[ DNS Resolution Test ]"
read -p "Enter a domain to test (example: google.com): " domain
nslookup $domain

echo ""
echo "[ Open Ports ]"
ss -tuln

echo ""
echo "==== DONE ===="
