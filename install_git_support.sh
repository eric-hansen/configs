#!/bin/bash

GIT_BIN=$(whereis git)

if [ ! -x "$GIT_BIN" ]; then
  echo "Git needs to be installed to run this install script."
  exit 1
fi

if [ ! -d "$HOME/.git_templates" ]; then
  echo "Copying Git templates..." &&
  ln -s "$(pwd)/.git_templates" "$HOME/.git_templates"
fi

if [ ! -e "$HOME/.gitconfig" ]; then
  echo "Copying global Git config file..." &&
  ln -s "$(pwd)/.gitconfig" "$HOME/.gitconfig"
fi

if [ ! -e "$HOME/.gitignore_global" ]; then
  echo "Copying global Git ignore file..." &&
  ln -s "$(pwd)/.gitignore_global" "$HOME/.gitignore_global" &&
  git config --global core.excludesfile "$HOME/.gitignore_global"
fi

if [ ! -d "$HOME/.git_templates" ]; then
  echo "Configuring Git to use templates dir for future cloning..." && \
  git config --global init.templatedir $HOME/.git_templates
fi

echo "Git support installed."
