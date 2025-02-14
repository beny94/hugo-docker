#!/bin/bash

set -ex

# Check if /hugo is empty
if [ ! "$(ls -A /hugo | grep -v '^\.')" ]; then  # ls -A lists all but . and ..; if empty, nothing is returned
  echo "/hugo is empty. Running hugo new site..."
  hugo new site /hugo
  cd /hugo
  git init
  git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
  echo "theme = 'ananke'" >> hugo.toml
else
  echo "/hugo is not empty. Proceeding with normal startup..."
fi

# Execute the default command (or any other command)
exec "$@"  # This executes the command specified in the CMD instruction