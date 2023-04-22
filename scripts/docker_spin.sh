#!/bin/sh

docker run --rm -e TZ=America/Los_Angeles --net=host -v /home/sean/Documents/blogs/recipe-book:/blogs --user 1000:1000 hugo:latest $1
