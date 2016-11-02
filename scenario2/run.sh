#! /bin/bash

# Scenario 2
# ==========
#
# Similar to PDF Document Samples + PEP420 Samples, but in a named
# python module
#
# Structure:
# ==========
#
# scenario2
# ├── app.py
# └── run.sh
#
# Dependencies:
#   ../lib/companyname-auth/
#   ../lib/companyname-api/
#   ../lib/companyname-api-posts/
#   ../lib/companyname-api-contactus/
#
# Application:
#   python module

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
