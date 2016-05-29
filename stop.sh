#!/bin/sh
# stop and cleanup the container

echo '[Stopping Docker container]'
if [[ "$(docker ps -qa --filter name=aiva-production 2> /dev/null)" != "" ]]; then
  docker stop aiva-production
fi

if [[ "$(docker ps -qa --filter name=aiva-development 2> /dev/null)" != "" ]]; then
  docker stop aiva-development
fi

if [[ "$(docker ps -qa --filter name=aiva-enter 2> /dev/null)" != "" ]]; then
  docker stop aiva-enter
fi