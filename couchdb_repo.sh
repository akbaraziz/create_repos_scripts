#!/bin/bash

set -ex

# Create CouchDB Repository
cat >/etc/yum.repos.d/bintray-apache-couchdb-rpm.repo <<EOL
[bintray--apache-couchdb-rpm]
name=bintray--apache-couchdb-rpm
baseurl=http://apache.bintray.com/couchdb-rpm/el$releasever/$basearch/
gpgcheck=0
repo_gpgcheck=0
enabled=1
EOL