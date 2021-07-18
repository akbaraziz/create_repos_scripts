#!/bin/bash

set -ex

# Create MongoDB Repository
cat >/etc/yum.repos.d/mongodb-org.repo <<EOL
[mongodb-org-4.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/7Server/mongodb-org/4.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.0.asc
EOL