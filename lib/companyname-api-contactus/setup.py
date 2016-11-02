from setuptools import setup


setup(
    name='companyname-api-contactus',
    version='1.0.0',
    author='Martin Sanders',
    author_email='martin@martinsanders.co.uk',
    url='http://martinsanders.co.uk',
    packages=(
        'companyname.api.contactus',
    ),
    namespace_packages=(
        'companyname.api',
        'companyname',
    ),
)