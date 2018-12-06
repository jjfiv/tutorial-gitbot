#!/bin/bash

set -eu

python3 update.py
CHANGES=$?
echo "Changes=$CHANGES"

if [[ 0 -eq $CHANGES ]]; then
	echo "Remote changes!"
	echo "The last word is now! $(date)" > timestamp
	git add timestamp
	git commit -m "last-word-bot!"
	git push
fi
