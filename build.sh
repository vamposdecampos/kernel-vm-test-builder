#!/bin/sh
set -e
set -x
IMAGE="bld"
docker build -t $IMAGE .
docker run --rm $IMAGE > initrd.gz
