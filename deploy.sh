#!/bin/sh

hugo
gsutil defacl ch -u allUsers:READER gs://www.madsandersen.com
gsutil web set -m index.html -e 404.html gs://www.madsandersen.com
gsutil -m rsync -R public gs://www.madsandersen.com
rm -rf public
