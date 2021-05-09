#!/bin/sh

echo "Script executed from: ${PWD}"

BASEDIR=$(dirname $0)
echo "Script location: ${BASEDIR}"

DIR="$( cd "$( dirname "$0" )" && pwd )"
echo "$DIR"

cd $BASEDIR
pwd

# Spin up docker to generate static pages w/ Hugo
#docker run --rm -e TZ=America/Los_Angeles --net=host -v /home/sean/cooking_blog:/cooking_blog --user 1000:1000 hugo-alpine:1.0
$DIR/docker_spin.sh

# Commit generated pages
git add $DIR/../public
git commit -a -m "Generate"

# Push subtree to site
$DIR/push_public.sh
