#!/bin/bash 

set -ex

# Create Docker Repository
yum-config-manager --add-repo --enable https://download.docker.com/linux/centos/docker-ce.repo