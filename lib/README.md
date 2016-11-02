Source Repository - https://github.com/m-sanders/namespace-packages-example

# Overview #

Separating Namespace packages into their own repositories in Python 2.7.


# Demo #

    mkvirtualenv namespace-example
    pip install companyname-auth/
    pip install companyname-api/
    pip install companyname-api-posts/
    pip install companyname-api-constactus/


    python
    >>> from companyname import auth
    >>> from companyname.api import core, posts, contactus
