#!/bin/sh

IS_MAC=0

if [ "$(uname)" == "Darwin" ]; then
  IS_MAC=1
fi

echo "Running on a Mac? $IS_MAC"

echo "Installing FiraCode..."
cp Fonts/FiraCode/*.ttf $HOME/Library/Fonts/

