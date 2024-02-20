#!/bin/bash
# Debian Script for installing and validating NODEJS/NPM

sudo apt update # Update packages
apt-get remove libnode-dev
curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
# Check if Node.js is installed and get its version
node_version=$(node -v)

# Check if the output contains a version number
if [[ $node_version =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "" &&  echo "---------------"
    echo "NPM INSTALLED SUCCESSFULLY!"
    exit 0
else
    echo "Node.js is not installed or the installation is corrupted."
    echo "Please restart the installation and try again."
    echo "Error: $node_version"
    exit 1
fi
 