#!/bin/bash
set -e

function _base_json_grep {
  local FILENAME="$1"
  local MATCH="$2"
  echo $(cat $FILENAME |  bash ./scripts/JSON.sh -b |  grep $MATCH)
}

function json_grep {
  local FILENAME="$1"
  local MATCH="$2"
  local MATCHED=$(_base_json_grep $FILENAME $MATCH)
  echo ${MATCHED:${#MATCH}:${#MATCHED}-${#MATCH}-1}
}

function json_grep_int {
  local FILENAME="$1"
  local MATCH="$2"
  local MATCHED=$(_base_json_grep $FILENAME $MATCH)
  echo ${MATCHED:${#MATCH}-1:${#MATCHED}-${#MATCH}-1}
}

for f in "$@"
do
  echo "Fetching $f"
  TFILE=`mktemp`
  curl --fail "$f.json" > $TFILE
  TITLE=$(json_grep $TFILE '\[0,"data","children",0,"data","title"\]')
  PERMALINK=$(json_grep $TFILE '\[0,"data","children",0,"data","permalink"\]')
  SLUG=$(echo "$PERMALINK" | awk -F"/" '{print $(NF-1)}')
  CREATED_AT=$(json_grep_int $TFILE '\[0,"data","children",0,"data","created"\]')
  echo $CREATED_AT
  CREATED_BY=$(json_grep $TFILE '\[0,"data","children",0,"data","author"\]')
  POST=$(json_grep $TFILE '\[0,"data","children",0,"data","selftext"\]')
  DATE=$(date -r "$CREATED_AT" +%Y-%m-%d)
  TARGET="_posts/$DATE-$SLUG.md"

  cat > $TARGET <<EOF
---
layout: news

title: "$TITLE"
date: $DATE
source:
  author: $CREATED_BY
  link:
    url: "$f"
    name: "Rust Users Forum"
---

$POST

EOF

  echo "$TARGET written."

done
