#!/bin/bash

# -------------------------------------------
# Script Name: RAM Monitor
# Description: Monitors available free RAM on a Linux system.
# If the available memory falls below a certain threshold,
# it will display a warning message.
# -------------------------------------------

# Get the free memory in MB from the 'free' command using 'awk'
# This command gets the 4th field (Free column) from the Total line
FREE_SPACE=$( free -mt | grep "Total" | awk '{print $4}' )

# Set the minimum required threshold in MB
THRESHOLD=500

if [[ $FREE_SPACE -lt $THRESHOLD ]]
then
	echo "Warning, RAM is running low!!!!"
else
	echo "RAM Space is sufficient - $FREE_SPACE Mb"
fi
