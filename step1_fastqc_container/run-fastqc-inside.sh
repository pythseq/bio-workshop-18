#!/bin/bash

# this is not required for pulling
# docker login -u 'user' -p 'password' quay.io

fastqc_cont=quay.io/biocontainers/fastqc:0.11.7--4

run_flags="-it --rm -v $(pwd):/data -w /data"

docker run $run_flags $fastqc_cont bash
