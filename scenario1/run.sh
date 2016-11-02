#! /bin/bash

# Scenario 1
# ==========
#
# Similar to PDF Document Samples + PEP420 Samples

# Structure
# =========
#
# scenario1
# └── run.sh
#
# Dependencies:
# ============
#   ../lib/companyname-auth/
#   ../lib/companyname-api/
#   ../lib/companyname-api-posts/
#   ../lib/companyname-api-contactus/
#
# Application:
#   inline

# Build the virtual environment

virtualenv nsp
. ./nsp/bin/activate

# Install the packages

pip install ../lib/companyname-auth/
pip install ../lib/companyname-api/
pip install ../lib/companyname-api-posts/
pip install ../lib/companyname-api-contactus/

# Run inline

python -c 'from companyname import auth; print("import works")'
python -c 'from companyname.api import core, posts, contactus; print("import works")'

# Cleanup

rm -rf nsp
