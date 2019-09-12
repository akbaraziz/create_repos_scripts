#!/bin/bash

set -ex

# Create Artifactory Pro Repository
cat >/etc/yum.repos.d/bintray-jfrog-artifactory-pro-rpms.repo <<EOL
[bintray-jfrog-artifactory-pro-rpms]
name=bintray--jfrog-artifactory-pro-rpms
baseurl=https://jfrog.bintray.com/artifactory-pro-rpms
gpgcheck=0
repo_gpgcheck=0
enabled=1
EOL