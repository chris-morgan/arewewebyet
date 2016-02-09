#!/bin/bash
set -e
BASE="_data/pkgs/"
FILES=`ls -1 $BASE`
SERVER="https://crates.io/api/v1/crates/"
for f in "$@"
do
  pkg=${f::${#f}-5}
  echo "Updating $pkg"
  curl -H "Accept:application/json" -X GET $SERVER$pkg > "$BASE$pkg.json"
done
