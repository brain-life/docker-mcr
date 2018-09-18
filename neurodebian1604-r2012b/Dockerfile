# Download and install Matlab Compiler Runtime
#
# This docker file will configure an environment into which the Matlab compiler
# runtime will be installed and in which stand-alone matlab routines (such as
# those created with Matlab's deploytool) can be executed.
#
# See http://www.mathworks.com/products/compiler/mcr/ for more info.

#FROM ubuntu-debootstrap:trusty
FROM neurodebian:trusty

# Install the MCR dependencies and some things we'll need and download the MCR
# from Mathworks -silently install it
RUN apt-get -qq update && apt-get -qq install -y \
    unzip \
    xorg \
    wget \
    curl && \
    mkdir /mcr-install && \
    mkdir /opt/mcr && \
    cd /mcr-install && \
    wget http://ssd.mathworks.com/supportfiles/MCR_Runtime/R2012b/MCR_R2012b_glnxa64_installer.zip && \
    cd /mcr-install && \
    unzip -q MCR_R2012b_glnxa64_installer.zip && \
    ./install -destinationFolder /opt/mcr -agreeToLicense yes -mode silent && \
    cd / && \
    rm -rf mcr-install

#TODO merge to above
RUN apt-get -y install libatlas-base-dev

# Configure environment variables for MCR
# TODO - adding these breaks a lot of basic commands (curl, apt-get, etc..) - the library provided by r2012b are too old
# Apps that want to use MCR capability needs to add following via export right before the execution of the app
#ENV LD_LIBRARY_PATH /opt/mcr/v80/runtime/glnxa64:/opt/mcr/v80/bin/glnxa64:/opt/mcr/v80/sys/os/glnxa64
#ENV XAPPLRESDIR /opt/mcr/v80/X11/app-defaults

