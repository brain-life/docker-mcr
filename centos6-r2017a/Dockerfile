# Download and install Matlab Compiler Runtime v9.2 (R2017a)
#
# This docker file will configure an environment into which the Matlab compiler
# runtime will be installed and in which stand-alone matlab routines (such as
# those created with Matlab's deploytool) can be executed.
#
# See http://www.mathworks.com/products/compiler/mcr/ for more info.

FROM centos:6

RUN \
	yum update && yum install -y wget curl xorg unzip && \
	mkdir /mcr-install && mkdir /opt/mca && \
	cd /mcr-install && \
	wget https://www.mathworks.com/supportfiles/downloads/R2017a/deployment_files/R2017a/installers/glnxa64/MCR_R2017a_glnxa64_installer.zip && \
	unzip MCR_R2017a_glnxa64_installer.zip && \
	./install -destinationFolder /opt/mcr -agreeToLicense yes -mode silent && \
	cd / && rm -rf mcr-install

# Configure environment variables for MCR
ENV LD_LIBRARY_PATH /opt/mcr/v92/runtime/glnxa64:/opt/mcr/v92/bin/glnxa64:/opt/mcr/v92/sys/os/glnxa64
ENV XAPPLRESDIR /opt/mcr/v90/X11/app-defaults
