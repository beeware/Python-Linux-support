Python Linux Support
====================

This is a meta-package for building a version of Python that can be embedded
into a Linux AppImage.

**This branch builds a packaged version of Python 3.11.0**.
Other Python versions are available by cloning other branches of the main
repository:

* `Python 3.8 <https://github.com/beeware/Python-Linux-support/tree/3.8>`__
* `Python 3.9 <https://github.com/beeware/Python-Linux-support/tree/3.9>`__
* `Python 3.10 <https://github.com/beeware/Python-Linux-support/tree/3.10>`__
* `Python 3.11 <https://github.com/beeware/Python-Linux-support/tree/3.11>`__

It works by downloading and building the standard Python sources, after
ensuring that key system libraries are installed. It installs the compiled
Python into a temporary prefix location, strips out parts that aren't needed,
and packages the result. The output of this project is an analog of the
"embedded" Windows distribution that is officially provided by the Python
project.

Quickstart
----------

A version of this package, compiled on Ubuntu 18.04, is available for `x86_64`_.

If you want to build your own version, you will need to have Docker installed.
After installing docker, run::

    $ make

This will:

1. Ensure that the system dependencies required to build Python are up to date.
2. Download the original Python source package
3. Configure and build the Python sources
4. Install the sources
5. Strip out parts that add significant bulk, but limited utility for embedded
   applications:

   * ``2to3``, ``pip``, ``pydoc``, and ``python-configure`` binaries
   * man pages
   * Testing code
   * ``idle``
   * ``tkinter``
   * ``turtle``

6. Build a tarball of the installed output.

The build products will be in the `build` directory; the distributable tarball
will be in the `dist` directory.

.. _x86_64: https://briefcase-support.s3.amazonaws.com/python/3.11/linux/x86_64/Python-3.11-macOS-support.b1.tar.gz
