#!/bin/bash
#
# Setup the the box. This runs as root
set -e

apt-get -y update

apt-get -y install curl axel

# You can install anything you need here.
axel 'https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.10.0-1_amd64.deb'
dpkg -i chefdk*
rm chefdk*
