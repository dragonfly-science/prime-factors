#!/bin/bash

# Make sure the job dies if there is an error
set -ex

# Carry out the factorization
make

# Copy files to the output
cp *.npz /output
cp *.png /output
