#!/bin/bash

if [[ $SHELL == "/bin/zsh" ]]; then
  SHELL_CONFIG_FILE="$HOME/.zprofile"
else
  SHELL_CONFIG_FILE="$HOME/.bash_profile"
fi

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to the shell's PATH
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$SHELL_CONFIG_FILE"
eval "$(/opt/homebrew/bin/brew shellenv)"
