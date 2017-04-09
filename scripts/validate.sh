#!/bin/bash
#
# Script validates if sample-app service is running using Spring Boot health check

set -e

for i in `seq 1 10`;
do
  HTTP_CODE=`curl --write-out '%{http_code}' -o /dev/null -m 10 -q -s http://localhost:8080/health`
  if [ "$HTTP_CODE" == "200" ]; then
    echo "Health returned 200. Validation successeded."
    exit 0;
  fi
  echo "Health check returned $HTTP_CODE, retrying."
  sleep 10
done
echo "Health check did not complete. Validation failed."
exit 1
