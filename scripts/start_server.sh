#!/bin/bash

# Navigate to the application directory
cd /var/www/html

# Activate the virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Start the Flask application in the background
echo "Starting Flask application..."
nohup python app.py > flask-app.log 2>&1 &

# Check if the app started successfully
if pgrep -f "python app.py"; then
    echo "Flask application started successfully."
else
    echo "Failed to start the Flask application."
    exit 1
fi
