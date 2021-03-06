#!/bin/bash

set -ex

# Create Cassandra Repository
cat >/etc/yum.repos.d/cassandra.repo <<EOL
[cassandra]
name=Apache Cassandra
baseurl=https://www.apache.org/dist/cassandra/redhat/311x/
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://www.apache.org/dist/cassandra/KEYS
EOL
