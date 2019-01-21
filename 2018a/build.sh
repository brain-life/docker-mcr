#!/bin/bash

set -x
set -e

tag=2018a
docker build -t brainlife/mcr .
docker tag brainlife/mcr brainlife/mcr:$tag
docker push brainlife/mcr:$tag
