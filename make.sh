#!/bin/bash

command=$1

usage="usage: ./make.sh [install|server]\n"
usage="$usage install - Install node dependancies\n"
usage="$usage firsttime = Execute first-time setup\n"

if [ "$command" = "install" ]; then
  npm install
  bower install
elif [ "$command" = "server" ]; then
  ember server
else
  echo "$usage"
fi
