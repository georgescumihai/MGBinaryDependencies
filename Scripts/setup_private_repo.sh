#!/bin/bash

function setup_private_repo {
  if [ -z "$2" ]                           # Is parameter #2 zero length?
  then
    echo "-Missing parameters, provide both repo name and path"  # Or no parameter passed.
    exit 1
  fi

  repo=$1
  repo_path=$2

  if pod repo list|grep $repo >/dev/null;
  then
    echo "No repository setup necessary"
  else
    pod repo add $repo $repo_path
  fi
}

setup_private_repo mgspecs git@github.com:georgescumihai/MGSpecs.git
