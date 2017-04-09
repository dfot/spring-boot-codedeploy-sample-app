#!/bin/bash
#
# Script installs sample-app as init.d service

set -e

chown sample-app-user:sample-app-user /var/sample-app/sample-app.jar

# protect application from modifications
chmod 500 /var/sample-app/sample-app.jar
#chattr +i /var/sample-app/sample-app.jar

# create symlink to init.d
ln -s /var/sample-app/sample-app.jar /etc/init.d/sample-app
chkconfig sample-app on
echo "Service installed."
