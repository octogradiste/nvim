#!/bin/bash

ARCH="x86_64"
if [[ "$1" == "arm64" ]]; then
    ARCH="arm64"
fi

NVIM_URL="https://github.com/neovim/neovim/releases/latest/download/nvim-linux-$ARCH.tar.gz"
INSTALL_DIR="/opt/nvim-linux-$ARCH"
BASHRC="$HOME/.bashrc"

echo "Installing Neovim for $ARCH..."
curl -LO "$NVIM_URL"
sudo tar -C /opt -xzf "nvim-linux-$ARCH.tar.gz"
rm "nvim-linux-$ARCH.tar.gz"

echo "export PATH=\"\$PATH:$INSTALL_DIR/bin\"" >> "$BASHRC"

echo "Installing LazyVim dependencies..."
export PATH="$PATH:$INSTALL_DIR/bin"
nvim --headless "+Lazy! sync" "+qa"

echo "Installation complete. Restart your shell or run 'source ~/.bashrc' to apply changes."

