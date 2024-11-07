#!/usr/bin/env bash

FORMULA_DIRECTORY_PATH=${1:-"../Formula"}
cd $FORMULA_DIRECTORY_PATH
RAW_RELEASES=$(curl -L -s -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28" https://api.github.com/repos/streamx-dev/streamx-cli/releases)

RELEASES=$(echo $RAW_RELEASES | jq --raw-output '.[].tag_name')

UPDATED='false'

for VERSION in $(echo $RELEASES);
do
  FILENAME="streamx@$VERSION.rb"
  if [ -f "$FILENAME" ]; then
    echo "Formula for VERSION $VERSION exists."
  else
    UPDATED='true'

    echo "Formula for VERSION $VERSION  not exist. Creating file '$FILENAME'... "

    curl -s "https://raw.githubusercontent.com/streamx-dev/homebrew-tap/refs/tags/$VERSION/Formula/streamx.rb" > $FILENAME

    VERSION_IN_CLASS_NAME=$(echo "$VERSION" | sed 's/[^a-zA-Z0-9]//g')

    # For MacOS start with: sed -i '' (...)
    sed -i "s/class Streamx/class StreamxAT$VERSION_IN_CLASS_NAME/g" "$FILENAME"
  fi
done

if [ $UPDATED == 'true' ]; then
  echo "Committing changes..."
  git add ./streamx@*.rb
  git commit -m "Update homebrew formulas."
else
  echo "No file updated."
fi
