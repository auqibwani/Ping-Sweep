#!/bin/bash
#This is ping sweep program
echo "Enter the Subnet:"
read SUBNET

for IP in $(seq 1 254); do 
	ping -c 1 $SUBNET.$IP | cut -d = -f 4
done
