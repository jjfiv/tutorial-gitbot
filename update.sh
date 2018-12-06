#!/bin/bash

set -eu

CHANGES=`git pull`
echo "Changes=$CHANGES"
if [[ "Updating"* == $CHANGES ]]; then
  echo "Remote changes!"
  echo "The last word is now! $(date)" > timestamp
  git add timestamp
  git commit -m "last-word-bot!"
  git push
fi
