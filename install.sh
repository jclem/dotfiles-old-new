#!/usr/bin/env bash

dotfiles_dir="$(pwd)"

# Symlink fish config
ln -sfv "$dotfiles_dir/fish" "$HOME/.config"

# Install apt packages
if ! test -z "$CODESPACES"; then
	sudo apt-get update
	sudo apt-get install -y fish 
	sudo chsh -s $(which fish)
fi

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0