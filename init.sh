#!/usr/bin/env bash

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-"$HOME/.config"}

env bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew tap \
  cantino/mcfly

brew install --cask \
  alacritty \
  font-iosevka \
  visual-studio-code

brew install \
  amp \
  bash \
  bat \
  delta \
  direnv \
  dive \
  dog \
  dust \
  exa \
  fish \
  fzf \
  git \
  gnupg pinentry-mac \
  jq \
  just \
  mcfly \
  micro \
  navi \
  openssl \
  procs \
  starship \
  volta \
  xh \
  yq \
  zoxide \

ln -s $PWD/alacritty $XDG_CONFIG_HOME/alacritty
ln -s $PWD/fish $XDG_CONFIG_HOME/fish
ln -s $PWD/starship $XDG_CONFIG_HOME/starship
