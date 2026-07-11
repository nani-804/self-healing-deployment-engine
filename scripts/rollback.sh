#!/bin/bash

echo "Rolling back to previous stable version..."

docker stop self-healing-container || true

docker rm self-healing-container || true

docker run -d \
--name self-healing-container \
-p 5000:5000 \
self-healing-app:stable

echo "Rollback Completed Successfully"
