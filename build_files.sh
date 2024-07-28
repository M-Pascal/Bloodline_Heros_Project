
# Install pip if necessary
if ! command -v pip &> /dev/null
then
    echo "pip could not be found"
    # Optionally try to install it or fail the build with an appropriate message
fi

# Install dependencies
pip install -r requirements.txt

python3 manage.py collectstatic