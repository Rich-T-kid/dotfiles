#!/bin/bash
# Symlinks dotfiles from this repo into the right spots in $HOME.
# Safe to re-run: existing real files are backed up; existing symlinks are replaced.

set -e

DOTFILES="$HOME/dotfiles"

link() {
  local src="$DOTFILES/$1"
  local dest="$2"

  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "Backing up existing $dest -> $dest.backup"
    mv "$dest" "$dest.backup"
  elif [ -L "$dest" ]; then
    rm "$dest"
  fi

  ln -s "$src" "$dest"
  echo "Linked $dest -> $src"
}

mkdir -p "$HOME/.config"

link bashrc        "$HOME/.bashrc"
link bash_profile  "$HOME/.bash_profile"
link vimrc         "$HOME/.vimrc"
link nvim          "$HOME/.config/nvim"

echo ""
echo "Done. Open a new shell."
