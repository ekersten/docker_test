#!/bin/sh

set -ea

if [ -f "package.json" ] && [ ! -d "node_modules" ]
then
    echo "Installing node dependecies"
    npm install
fi

if [ -z "$*" ]
then
    npm start
else
    exec "$@"
fi
