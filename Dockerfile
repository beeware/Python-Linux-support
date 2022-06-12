# Use Ubuntu 18.04 (bionic) as a base image. This ensures that we're using an
# old version of libc, maximizing the compatibility of the image when it is
# included in an AppImage.
FROM ubuntu:18.04

# Install the build requirements for Python.
RUN apt-get update -y && \
    apt-get install -y \
        gcc make curl \
        libbz2-dev \
        libffi-dev \
        libgdbm-compat-dev \
        libgdbm-dev \
        liblzma-dev \
        libncurses5-dev \
        libsqlite3-dev \
        libssl-dev \
        uuid-dev \
        zlib1g-dev

# Install the Makefile and exclude list, and build Python.
# This Makefile will assume there are two external mountpoints:
#   /local/downloads (to ensure that we don't repeatedly download source code)
#   /local/dist (to provide an external location for build products)
# You can mount these directories using the -v option to docker:
#   docker run -it -v `pwd`/downloads:/local/downloads -v `pwd`/dist:/local/dist ...
COPY Makefile local/Makefile
COPY exclude.list local/exclude.list
WORKDIR /local
CMD ["make", "-e", "Python"]
