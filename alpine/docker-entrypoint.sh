#!/bin/bash

# Check if /hugo is empty
if [ ! "$(ls -A /hugo)" ]; then  # ls -A lists all but . and ..; if empty, nothing is returned
  echo "/hugo is empty. Running hugo new site..."
  hugo new site /hugo
else
  echo "/hugo is not empty. Proceeding with normal startup..."
fi

# Execute the default command (or any other command)
exec "$@"  # This executes the command specified in the CMD instruction