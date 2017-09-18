#!/bin/bash

if [ `uname` == "Darwin" ]; then
    if [ -e "$HOME/Library/Application Support/Code - Insiders" ]; then
        INSTALL_DIR="$HOME/Library/Application Support/Code - Insiders/User"

        if [ -e "$INSTALL_DIR/settings.json" ]; then
		echo "Backing up $INSTALL_DIR/settings.json"
        	mv "$INSTALL_DIR/settings.json" "$INSTALL_DIR/settings.json.backup"
	fi

	echo "Installing settings to Insiders..."
	ln -s `pwd`/settings.json "$INSTALL_DIR/settings.json"
    fi
fi
