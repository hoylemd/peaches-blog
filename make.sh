#!/bin/bash

command=$1
nenv_path="nenv"

usage="usage: ./make.sh [install|firsttime]\n"
usage="$usage install - Install node dependancies\n"
usage="$usage firsttime = Execute first-time setup\n"

if [ "$command" = "install" ]; then
  echo "Installing!"
  source "$nenv_path/bin/activate"
  npm install
elif [ "$command" = "firsttime" ]; then
  if [ -d "$nenv_path" ]; then
    echo "First-time setup already done. Nothing to do!"
  else
	  echo "First-time setup!"
	  nodeenv --prebuilt "$nenv_path"
	  $result = $?
	  if $result; then
	    echo "environment creation failed. Is nodeenv installed?"
	  else
	    ./make.sh install
	  fi
  fi
else
  echo "$usage"
fi
