#!/bin/bash
# Delete all missing files from git.

git rm "$(git ls-files -d)"

