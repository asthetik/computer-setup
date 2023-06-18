#!/bin/bash

if [[ $SHELL == "/bin/zsh" ]]; then
  SHELL_CONFIG_FILE="$HOME/.zprofile"
else
  SHELL_CONFIG_FILE="$HOME/.bash_profile"
fi

/bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/Homebrew/install@HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> "$SHELL_CONFIG_FILE"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$SHELL_CONFIG_FILE"

eval $(/opt/homebrew/bin/brew shellenv)