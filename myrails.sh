#!/usr/bin/env bash

proj_name=$1
if [[ -z "$proj_name" ]]; then
  echo "please specify a project name"
  exit 1
else
  if [[ ! $1 =~ [A-Z] ]]; then
    echo "please name your project like a Ruby constant: e.g. MyProject  instead of my_project"
    exit 1
  fi
fi

git clone git@github.com:kirkland/generic_app_2.git
mv generic_app_2 $proj_name
cd $proj_name
rm -rf .git
find . -type f -exec sed -i "s/GenericApp/$proj_name/" '{}' \;
git init
git add .
git commit -am "new project"

gem install bundler --no-ri --no-rdoc
bundle install

rake db:migrate
