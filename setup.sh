#!/bin/zsh

# Function to check if a command exists
command_exists() {
    which "$1" >/dev/null 2>&1
}

# Install Homebrew if it's not already installed
if ! command_exists brew; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install packages from brew-package.txt
if [ -f "brew-package.txt" ]; then
    echo "Installing packages from brew-package.txt..."
    brew install $(cat brew-package.txt)
fi

# Install applications from brew-cask.txt
if [ -f "brew-cask.txt" ]; then
    echo "Installing applications from brew-cask.txt..."
    brew install --cask $(cat brew-cask.txt)
fi

# Set up .zshrc
if [ -f ".zshrc" ]; then
    echo "Setting up .zshrc..."
    cp .zshrc ~/.zshrc
    source ~/.zshrc
fi

# Set up .config directory
if [ -d ".config" ]; then
    echo "Setting up .config directory..."
    cp -R .config/* ~/.config/
fi

# Check if Rust is installed
if ! command_exists rustup; then
    echo "Installing Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    source $HOME/.cargo/env
fi

# Check if Zellij exists
if ! command_exists zellij; then
    echo "Cloning Zellij plugin repository..."
    git clone https://github.com/tarkah/zellij-bare-bar.git
    cd zellij-bare-bar/
    
    # Install dependencies and build the plugin
    echo "Installing dependencies and building the plugin..."
    rustup target add wasm32-wasi
    cargo build --release
    
    # Copy the plugin to the Zellij plugins folder
    plugins_folder=$(zellij setup --dump-plugins)
    cp ./target/wasm32-wasi/release/bare-bar.wasm "$plugins_folder/plugins/"
    
    echo "Zellij plugin installation complete!"
fi

echo "Setup complete!"
