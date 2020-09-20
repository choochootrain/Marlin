#!/usr/bin/env bash
set -ex

CURRENT="$(git rev-parse --abbrev-ref HEAD)"

git checkout bugfix-2.0.x
git pull origin bugfix-2.0.x

git checkout $CURRENT
git rebase bugfix-2.0.x
