#!/bin/bash
#
# Script installs Java and creates user and folder for sample-app service

set -e

# yum update -y

# install java if needed
# TODO java8
{ which java; } || { yum install java -y; }

# create app user
useradd --shell /sbin/nologin --system --user-group sample-app-user

# create app directory
mkdir -p /var/sample-app
chown sample-app-user /var/sample-app
chgrp sample-app-user /var/sample-app
