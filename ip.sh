#!/bin/bash


ip=`route -n | grep UG | tr -s " " | cut -f 2 -d " "`

echo "Checking to see if $ip is up..."

ping -c 5 $ip
