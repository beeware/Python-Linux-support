Python Linux Support
====================

**This repository branch builds a packaged version of Python 3.5.9**.
Other Python versions are available by cloning other branches of the main
repository.

This is a meta-package for building a version of Python that can be embedded
into a Linux AppImage.

It works by downloading and building the standard Python sources, after
ensuring that key system libraries are installed. It installs the compiled
Python into a temporary prefix location, strips out parts that aren't needed,
and packages the result.

Quickstart
----------

A version of this package, compiled on Ubuntu 16.04, `is available`_.

If you want to build your own version, run::

    $ make

This will:

1. Ensure that the system dependencies required to build Python are up to date.
2. Download the original Python source package
3. Configure and build the Python sources
4. Install the sources
5. Strip out unnecesarry parts (e.g., testing code, includes and man pages)
6. Build a tarball of the installed output.

The build products will be in the `build` directory; the distributable tarball
will be in the `dist` directory.

.. _is available: https://briefcase-support.s3-us-west-2.amazonaws.com/python/3.5/linux/Python-3.5-Linux-support.b1.tar.gz
