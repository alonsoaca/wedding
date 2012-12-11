#!/bin/bash
# Express deploy to server using capistrano

die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "Need at least commit message, $# provided"

echo "Will start deployment of: $1"

git add .

git commit -m "$1"

git push

bundle exec cap deploy