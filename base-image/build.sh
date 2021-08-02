#!/bin/bash -e

# This script is used to build and test.

echo "-> Building tutorial/fedora-base ..."

docker build -t tutorial/fedora-base .

./test.sh
