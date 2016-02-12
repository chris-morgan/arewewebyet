#!/bin/bash
set -e
BASE="_data/pkgs"
FILES=`ls -1 $BASE`
SERVER="https://crates.io/api/v1/crates/"
NEW_VERSIONS=()
for f in "$@"
do
  if [[ "$f" == *json ]];
  then
    pkg=${f::${#f}-5}
  else
    pkg=$f
  fi

  PKG_INFO="$BASE/$pkg.json"
  VERSION="unknown"
  if [ -f $PKG_INFO ]; then
    VERSION=`cat $PKG_INFO |  bash ./scripts/JSON.sh -b | grep '\["crate","max_version"\]' | awk -F' ' '{gsub(/"/, "", $2); print $2}'`
  fi
  echo "Updating $pkg ($VERSION)"
  curl --fail -H "Accept:application/json" -X GET $SERVER$pkg > "$PKG_INFO"

  NEW_VERSION=`cat $PKG_INFO |  bash ./scripts/JSON.sh -b | grep '\["crate","max_version"\]' | awk -F' ' '{gsub(/"/, "", $2); print $2}'`

  [ "$VERSION" != "$NEW_VERSION" ] && NEW_VERSIONS+=($pkg)
done

echo "New Versions found for: $NEW_VERSIONS"
