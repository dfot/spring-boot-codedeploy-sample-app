#!/bin/bash
#
# Script installs Java and creates user and folder for sample-app service

set -e

yum -y update

{ which java; } || { yum install java; }

useradd sample-app-user

# create app directory
mkdir -p /var/sample-app
chown sample-app-user /var/sample-app
chgrp sample-app-user /var/sample-app
