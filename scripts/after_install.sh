#!/bin/bash

# Navigate to the application directory
cd /var/www/html

# Create a Python virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi

# Activate the virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Install Python dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Set correct file permissions (optional)
echo "Setting file permissions..."
chown -R root:root /var/www/html
chmod -R 755 /var/www/html
