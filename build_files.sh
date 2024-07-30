#!/bin/bash
python -m venv venv

.\myenv\Scripts\activate

python3.9 -m install -r requirements.txt 
python3 manage.py migrate

python3.9 manage.py collectstatic --noinput