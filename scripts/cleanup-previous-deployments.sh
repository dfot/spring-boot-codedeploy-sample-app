# stop application if it is running
service sample-app stop

# move current copy of application into a backup folder
mv /var/sample-app /var/sample-app-backup/DATE
