#!/bin/bash
# Express deploy to server using capistrano

echo "Will start deployment of: $1"

git add .

git commit -m "$1"

git push

bundle exec cap deploy