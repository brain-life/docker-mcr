#!/bin/bash

#docker pull centos:6
#docker pull centos:7
#docker pull neurodebian:xenial

#docker pull neurodebian:trusty

#docker build -t brainlife/mcr .
#docker tag brainlife/mcr brainlife/mcr:R2017a
#docker push brainlife/mcr:R2017a

#docker build -t brainlife/mcr:centos6-r2016a centos6-r2016a && 
#    docker push brainlife/mcr:centos6-r2016a

#docker build -t brainlife/mcr:centos6-r2017a centos6-r2017a && 
#    docker push brainlife/mcr:centos6-r2017a

#docker build -t brainlife/mcr:centos7-r2017a centos7-r2017a && 
#    docker push brainlife/mcr:centos7-r2017a

#docker build -t brainlife/mcr:neurodebian1604-r2017a neurodebian1604-r2017a && docker push brainlife/mcr

docker build -t brainlife/mcr:neurodebian1604-r2012b neurodebian1604-r2012b && docker push brainlife/mcr
