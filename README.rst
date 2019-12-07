Python Linux Support
====================

This is a meta-package for building a version of Python that can be embedded
into a Linux AppImage.

It works by downloading and building the standard Python sources, after
ensuring that key system libraries are installed. It installs the compiled
Python into a temporary prefix location, strips out parts that aren't needed,
and packages the result.

The master branch of this repository has no content; there is an
independent branch for each supported version of Python. The following
Python versions are supported:

* `Python 3.5 <https://github.com/pybee/Python-Linux-support/tree/3.5>`__
* `Python 3.6 <https://github.com/pybee/Python-Linux-support/tree/3.6>`__
* `Python 3.7 <https://github.com/pybee/Python-Linux-support/tree/3.7>`__
* `Python 3.8 <https://github.com/pybee/Python-Linux-support/tree/3.8>`__
