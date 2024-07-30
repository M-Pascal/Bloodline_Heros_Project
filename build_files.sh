#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Ensure Python and pip are available
if ! command -v python3 &>/dev/null; then
  echo "Python is not installed."
  exit 1
fi

if ! command -v pip &>/dev/null; then
  echo "Pip is not installed."
  exit 1
fi

# Set up a virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run Django commands (if needed)
python manage.py migrate
python manage.py collectstatic --noinput
