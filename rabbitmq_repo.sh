#!/bin/bash

set -ex

# Import Key
rpm --import rpm --import https://www.rabbitmq.com/rabbitmq-release-signing-key.asc

# Create Erlang Repository
cat >/etc/yum.repos.d/rabbitmq-erlang.repo <<EOL
[rabbitmq-erlang]
name=rabbitmq-erlang
baseurl=https://dl.bintray.com/rabbitmq-erlang/rpm/erlang/21/el/7
gpgcheck=1
gpgkey=https://dl.bintray.com/rabbitmq/Keys/rabbitmq-release-signing-key.asc
repo_gpgcheck=0
enabled=1
EOL

# Create RabbitMQ Repository
cat >/etc/yum.repos.d/bintray-rabbitmq-rpm.repo <<EOL
[bintray-rabbitmq-server]
name=bintray-rabbitmq-rpm
baseurl=https://dl.bintray.com/rabbitmq/rpm/rabbitmq-server/v3.7.x/el/7/
gpgcheck=0
repo_gpgcheck=0
enabled=1
EOL