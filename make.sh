#!/bin/bash

command=$1

usage="usage: ./make.sh [install|server|deploy]\n"
usage="$usage install - Install node dependancies\n"
usage="$usage server - run dev server\n"
usage="$usage deploy $hostname - deploy to a host\n"

if [ -d "nenv" ] && [ -z "$NODE_VIRTUAL_ENV" ]; then
  source nenv/bin/activate
fi

if [ "$command" = "install" ]; then
  npm install
  bower install
elif [ "$command" = "server" ]; then
  ember server
elif [ "$command" = "deploy" ]; then
  hostname="$2"
  site_path="$hostname:/var/www/peaches-website"
  nginx_path="$hostname:/etc/nginx/sites-available/peaches-website.conf"
  ember build --environment=production
  echo "copying distributable files to $site_path"
  scp -r dist/* $site_path
  echo "copying nginx config to $nginx_path"
  scp nginx.conf $nginx_path
else
  echo "$usage"
fi
