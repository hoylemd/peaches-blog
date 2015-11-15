#!/bin/bash

command=$1

usage="usage: ./make.sh [install|freeze|firsttime]\n"
usage="$usage install - Install node dependancies\n"
usage="$usage freeze = Update dependancies\n"
usage="$usage firsttime = Execute first-time setup\n"

if [ "$command" = "install" ]; then
  echo "Installing!"
elif [ "$command" = "freeze" ]; then
  echo "Freezing!"
elif [ "$command" = "firsttime" ]; then
  echo "First-time setup!"
else
  echo "$usage"
fi
