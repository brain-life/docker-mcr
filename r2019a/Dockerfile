# Download and install Matlab Compiler Runtime
#
# This docker file will configure an environment into which the Matlab compiler
# runtime will be installed and in which stand-alone matlab routines (such as
# those created with Matlab's deploytool) can be executed.
#
# See http://www.mathworks.com/products/compiler/mcr/ for more info.

#FROM neurodebian:xenial
FROM neurodebian:nd18.04-non-free

# Install the MCR dependencies and some things we'll need and download the MCR
# from Mathworks -silently install it
RUN apt-get -qq update && apt-get -qq install -y unzip xorg wget curl libstdc++6 libgomp1 libatlas-base-dev && apt-get clean

RUN mkdir /install && cd /install && wget https://ssd.mathworks.com/supportfiles/downloads/R2019a/Release/5/deployment_files/installer/complete/glnxa64/MATLAB_Runtime_R2019a_Update_5_glnxa64.zip && unzip MATLAB_Runtime_R2019a_Update_5_glnxa64.zip && \
    ./install -destinationFolder /opt/mcr -agreeToLicense yes -mode silent && \
    rm -rf /install

# Configure environment variables for MCR

ENV LD_LIBRARY_PATH /opt/mcr/v96/runtime/glnxa64:/opt/mcr/v96/bin/glnxa64:/opt/mcr/v96/sys/os/glnxa64:/opt/mcr/v96/extern/bin/glnxa64

ENV XAPPLRESDIR /opt/mcr/v96/X11/app-defaults

#for singularity
RUN ldconfig

#for singularity on hpc
RUN mkdir -p /N/u /N/home /N/dc2 /N/soft

