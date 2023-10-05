#!/bin/bash

if command -v curl &> /dev/null; then
    result=$(curl -s -o /dev/null -w "%{http_code}" "$HEALTH_CHECK_PATH")
    if [ $? -eq 0 ] && [ $result -eq 200 ]; then
        echo "Connection successful!"
        exit 0
    else
        echo "Connection failed!"
        exit 1
    fi
elif command -v wget &> /dev/null; then
    result=$(wget --spider --server-response "$HEALTH_CHECK_PATH" 2>&1 | grep -c "200 OK")
    if [ $result -eq 1 ]; then
        echo "Connection successful!"
        exit 0
    else
        echo "Connection failed!"
        exit 1
    fi
else
    echo "Neither curl nor wget are installed. Please install either curl or wget to perform the health check."
    exit 1
fi
