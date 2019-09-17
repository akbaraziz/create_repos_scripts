#!/bin/bash

set -ex

# Create Artifactory Pro Repository
wget https://bintray.com/jfrog/artifactory-pro-rpms/rpm -O bintray-jfrog-artifactory-pro-rpms.repo
sudo mv bintray-jfrog-artifactory-pro-rpms.repo /etc/yum.repos.d/