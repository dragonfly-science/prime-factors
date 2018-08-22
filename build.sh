#!/bin/bash
set -ex
export DCMD=

make

# Copy files to the output
cp *.npz /output
cp *.png /output
