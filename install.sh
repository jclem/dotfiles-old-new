#!/usr/bin/env bash

dotfiles_dir="$(pwd)"

if test -d "$HOME/.config/fish"; then
	rm -r "$HOME/.config/fish"
fi

ln -sfv "$dotfiles_dir/fish" "$HOME/.config"
ln -sfv "$dotfiles_dir/git/.gitconfig" "$HOME/.gitconfig"

# Install apt packages
if ! test -z "$CODESPACES"; then
	sudo apt-add-repository -y ppa:fish-shell/release-3
	sudo apt-get update
	sudo apt-get install -y fish 
fi

# Set default shell
if ! test -z "$CODESPACES"; then
	sudo chsh -s $(which fish) codespace
fi

# Remove default fish prompt
if test -f /etc/fish/conf.d/fish_prompt.fish; then
	sudo rm /etc/fish/conf.d/fish_prompt.fish
fi

if ! test -z "$CODESPACES"; then
	# Install Exa manually
	wget https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip -O /tmp/exa.zip
	unzip /tmp/exa.zip -d /tmp
	sudo mv /tmp/exa-linux-x86_64 /usr/local/bin/exa
end

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0