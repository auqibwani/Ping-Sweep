#!/bin/bash
#This is ping sweep program
echo "Enter first 3 octats of the Subnet:"
read SUBNET

for IP in $(seq 1 254); do 
	ping -c 1 $SUBNET.$IP |grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
