#!/bin/bash
set -eu

GIT_LOCATION=/home/kerikun11/keriweb_sync
REPO=git@github.com:kerikun11/keriweb.git
WWW_LOCATION=/var/keriweb
BUNDLE_GEMFILE=$GIT_LOCATION/Gemfile

# update_repo
[ -d $GIT_LOCATION ] || mkdir -p $GIT_LOCATION
[ -d $GIT_LOCATION/.git ] || git clone $REPO $GIT_LOCATION
cd $GIT_LOCATION && git pull origin master

# build and sync
[ -d ./.bundle ] || bundle install --path vendor
bundle exec rake build
rsync -a --delete $GIT_LOCATION/_site/ $WWW_LOCATION
