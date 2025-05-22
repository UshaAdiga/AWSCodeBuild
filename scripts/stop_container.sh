#!/bin/bash
set -e

# Get the ID of the first running container
CONTAINER_ID=$(docker ps -q | head -n 1)

# Check if container ID is not empty
if [ -n "$CONTAINER_ID" ]; then
  echo "Stopping container ID: $CONTAINER_ID"
  docker rm -f "$CONTAINER_ID"
else
  echo "No running containers to stop."
fi
