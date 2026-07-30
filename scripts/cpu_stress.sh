#!/bin/bash

# 1. Find out how many CPU cores we have
CORES=$(nproc)
echo "Detected $CORES CPU cores."
echo "Starting heavy stress test on ALL cores... Press [CTRL+C] to stop."

# 2. Loop to launch a background stress process for every core
for i in $(seq 1 $CORES); do
    # This part runs an infinite math loop in the background (&)
    while sudo true; do 
        openssl speed md5 > /dev/null 2>&1
    done &
done

echo "Stress test is running. Check 'top' or 'htop' now!"

# 3. Wait for user to stop the script
trap "kill 0" EXIT
wait
