#!/bin/bash

URL="http://localhost:5000/health"

STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ "$STATUS" -eq 200 ]
then
    echo "Application Healthy"
else
    echo "Application Down"

    docker restart self-healing-container

    sleep 10

    STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)

    if [ "$STATUS" -eq 200 ]
    then
        echo "Restart Successful"
    else
        echo "Restart Failed"

        ./rollback.sh
    fi
fi
