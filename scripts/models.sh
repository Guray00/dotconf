#!/bin/sh

# check for modelli
DIR="~/Modelli/"
if [ -d "$DIR" ]; then
  # Take action if $DIR exists. #
  cp -r /tmp/dotconf/models/* ~/Modelli/ 
  exit
fi

DIR="~/Models/"
if [ -d "$DIR" ]; then
  # Take action if $DIR exists. #
  cp -r /tmp/dotconf/models/* ~/Models/ 
  exit
fi
