#!/bin/bash 

set -ex

# Install Pre-Reqs
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Create Docker Repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo