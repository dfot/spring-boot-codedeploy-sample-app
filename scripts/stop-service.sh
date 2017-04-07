#!/bin/bash
#
# Script stops sample-app service if it is running

set -e

if (( $(ps -ef | grep -v grep | grep sample-app | wc -l) > 0 ))
then
    service sample-app stop
fi
