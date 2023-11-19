#!/bin/bash

DIRECTORY=./vagrant-project

if [ -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does exist."  
  rm -r "$DIRECTORY"
fi

mkdir $DIRECTORY
chmod 777 $DIRECTORY
cd vagrant-project
vagrant init ubuntu/trusty32
vagrant up
vagrant ssh

