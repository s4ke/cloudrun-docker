#!/bin/bash

# launch dockerd in the background
dockerd &

# run docker ps to check if the daemon is running up to 10 times
for i in {1..10}; do
    docker ps && break
    sleep 1

    # if we reach 10 times, then the daemon is not running
    if [ $i -eq 10 ]; then
        echo "Failed to start dockerd"
        exit 1
    fi
done

docker run bash -c "while true; do echo hello world; sleep 1; done"