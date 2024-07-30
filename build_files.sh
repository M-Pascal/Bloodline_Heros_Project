#!/bin/bash

# Set up a virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run Django commands (if needed)
python manage.py migrate
python manage.py collectstatic --noinput
