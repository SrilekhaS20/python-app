#!/bin/bash

# Stop the application if it's already running
echo "Stopping any existing Flask application..."

if pgrep -f "python app.py"; then
    pkill -f "python app.py"
    echo "Application stopped."
else
    echo "No existing application running."
fi

# Clean the target directory
echo "Cleaning up previous application artifacts..."
rm -rf /var/www/html/*
