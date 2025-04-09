#!/usr/bin/env bash


# Another method to make this script one that takes command line arguments

if [ $# -eq 0 ]; then
  read -p "Enter the directory name: " name

  # check if the input is empty
  if [[ -z "$name" ]]; then 
    echo "Error: directory name cannot be empty"
    exit 1
  fi 

  mkdir -p "$name"
  cd "$name" || exit 1
  exec $SHELL


else
  name=$1
  mkdir -p "$name"
  cd "$name" || exit 1
  exec $SHELL
fi 

