#!/bin/bash
# Starts up Nginx and PHP within the container.

DATADIR="/webapp"

# Don't continue if we catch an error.
set -e

# Ensure server owns the DATADIR
chown -R www-data $DATADIR

cd $DATADIR

bundle install
rake db:create
rake db:migrate
rails s -d -p 80