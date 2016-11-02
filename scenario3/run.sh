#! /bin/bash

# Scenario 3
# ==========
#
# Runs a module that consumes a package with imports the installed packages
#
# Structure:
# ==========
#
# scenario3
# ├── app.py
# ├── base
# │   ├── __init__.py
# │   └── otherapp.py
# └── run.sh
#
# Dependencies:
#   ../lib/companyname-auth/
#   ../lib/companyname-api/
#   ../lib/companyname-api-posts/
#   ../lib/companyname-api-contactus/
#
# Application:
#   python module in a python package

# Build the virtual environment

virtualenv nsp
. ./nsp/bin/activate

# Install the packages

pip install ../lib/companyname-auth/
pip install ../lib/companyname-api/
pip install ../lib/companyname-api-posts/
pip install ../lib/companyname-api-contactus/

# Run module

python app.py

# Cleanup

rm -rf nsp
