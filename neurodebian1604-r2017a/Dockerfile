# Download and install Matlab Compiler Runtime
#
# This docker file will configure an environment into which the Matlab compiler
# runtime will be installed and in which stand-alone matlab routines (such as
# those created with Matlab's deploytool) can be executed.
#
# See http://www.mathworks.com/products/compiler/mcr/ for more info.

#FROM ubuntu-debootstrap:trusty
FROM neurodebian:xenial

# Install the MCR dependencies and some things we'll need and download the MCR
# from Mathworks -silently install it
RUN apt-get -qq update && apt-get -qq install -y unzip xorg wget curl libstdc++6 && \
    mkdir /mcr-install && \
    mkdir /opt/mcr && \
    cd /mcr-install && \
    wget http://www.mathworks.com/supportfiles/downloads/R2017a/deployment_files/R2017a/installers/glnxa64/MCR_R2017a_glnxa64_installer.zip && \
    cd /mcr-install && \
    unzip -q MCR_R2017a_glnxa64_installer.zip && \
    ./install -destinationFolder /opt/mcr -agreeToLicense yes -mode silent && \
    cd / && \
    rm -rf mcr-install

#for openmp (app-life uses it)
RUN apt-get update && apt-get install -y libgomp1
#for blas (nnls)
RUN apt-get update && apt-get install -y libatlas-base-dev

# Configure environment variables for MCR
ENV LD_LIBRARY_PATH /opt/mcr/v92/runtime/glnxa64:/opt/mcr/v92/bin/glnxa64
ENV XAPPLRESDIR /opt/mcr/v92/X11/app-defaults

#for singularity
RUN ldconfig

#for singularity on hpc
RUN mkdir -p /N/u /N/home /N/dc2 /N/soft
