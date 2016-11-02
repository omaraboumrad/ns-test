#! /bin/bash

# Scenario 4
# ==========
#
# Runs a module that consumes a package with the same root package of the
# installed namespaced packages. This sample *will* fail.
#
# Structure:
# ==========
#
# scenario4
# ├── app.py
# ├── companyname
# │   ├── __init__.py
# │   └── core
# │       ├── __init__.py
# │       └── models.py
# └── run.sh
#
# Dependencies:
#   ../lib/companyname-auth/
#   ../lib/companyname-api/
#   ../lib/companyname-api-posts/
#   ../lib/companyname-api-contactus/
#
# Application:
#   python module in a python package of the same name as the namespace

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
