#!/bin/bash
set -e

function json_grep {
  local FILENAME="$1"
  local MATCH="$2"
  local MATCHED=$(cat $FILENAME |  bash ./scripts/JSON.sh -b |  grep $MATCH)
  echo ${MATCHED:${#MATCH}:${#MATCHED}-${#MATCH}-1}
}

for f in "$@"
do
  echo "Fetching $f"
  TFILE=`mktemp`
  curl --fail "$f.json" > $TFILE
  TITLE=$(json_grep $TFILE '\["title"\]')
  SLUG=$(json_grep $TFILE '\["slug"\]')
  CREATED_AT=$(json_grep $TFILE '\["created_at"\]')
  CREATED_BY=$(json_grep $TFILE '\["post_stream","posts",0,"username"\]')
  POST=$(json_grep $TFILE '\["post_stream","posts",0,"cooked"\]')
  AUTHOR_NAME=$(json_grep $TFILE '\["post_stream","posts",0,"name"\]')
  DATE=${CREATED_AT:0:10}
  TARGET="_posts/$DATE-$SLUG.html"

  cat > $TARGET <<EOF
---
layout: news

title: "$TITLE"
date: $DATE
source:
  author: $AUTHOR_NAME ($CREATED_BY)
  link:
    url: "$f"
    name: "Rust Users Forum"
---

$POST

EOF

  echo "$TARGET written."

done
