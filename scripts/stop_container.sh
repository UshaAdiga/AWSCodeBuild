#!/bin/bash
set -e

# Stop the running container (if any)
#!/bin/bash

CONTAINER_ID=$(docker ps -q | head -n 1)
echo "$CONTAINER_ID"
docker rm -f "$CONTAINER_ID"

