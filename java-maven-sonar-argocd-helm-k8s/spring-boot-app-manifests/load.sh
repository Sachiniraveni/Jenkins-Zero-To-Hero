#!/bin/bash

POD_NAME="nginx"
DURATION=300  # Duration of the load in seconds

# Calculate the end time of the load
END_TIME=$((SECONDS + DURATION))

# Run a loop to generate some I/O activity
while [ $SECONDS -lt $END_TIME ]; do
  dd if=/dev/zero of=/dev/null bs=1M count=1000  # Generating some I/O activity
done

