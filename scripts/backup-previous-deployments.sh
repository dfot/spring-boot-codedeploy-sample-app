
#!/bin/bash
#
# Script creates a backup of existing deployment of an sample-app

set -e

TIMESTAMP=$(date +"%s")

if [ -e /var/sample-app ]
then
  mkdir -p /var/sample-app-backup

  # move current copy of application into a backup folder
  mv /var/sample-app /var/sample-app-backup/$TIMESTAMP

  echo "Backup copy created."
fi
