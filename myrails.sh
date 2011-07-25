#!/usr/bin/env bash

proj_name=$1
if [[ -z "$proj_name" ]]; then
  echo "please specify a project name"
  exit 1
fi

git clone git@github.com:kirkland/generic_app_2.git
rename generic_app_2 $proj_name
cd $proj_name
rm -rf .git
find . -type f -exec sed -i "s/GenericApp/$proj_name/" {} 
git add .
git commit -am "new project"

# TODO: run bundle install, make or set gemset?
