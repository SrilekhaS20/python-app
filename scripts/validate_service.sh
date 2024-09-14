#!/bin/bash

# Check if the application is running by sending a request to localhost
echo "Validating the service..."

APP_URL="http://localhost:5000"

HTTP_RESPONSE=$(curl --write-out "%{http_code}" --silent --output /dev/null "$APP_URL")

# Validate the HTTP response code
if [ "$HTTP_RESPONSE" -eq 200 ]; then
    echo "Service is running and returned a 200 status code."
    exit 0
else
    echo "Service is not running or returned a non-200 status code."
    exit 1
fi
