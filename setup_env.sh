#!/bin/bash

export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

ln -sf "$PWD/.config/nvim" "$XDG_CONFIG_HOME"/nvim

packages=(
    fd
    ripgrep
    npm
    neovim 
    fzf 
    zoxide 
)

# Iterate over the array and install each package
for package in "${packages[@]}"; do
  echo "Installing $package..."
  /home/linuxbrew/.linuxbrew/bin/brew install "$package"
done

go install -v github.com/incu6us/goimports-reviser/v3@latest
go install -v mvdan.cc/gofumpt@latest
go install -v github.com/segmentio/golines@latest
go install -v github.com/go-delve/delve/cmd/dlv@latest

cp -r ./.config ~/
