#!/bin/bash

if [[ $SHELL == "/bin/zsh" ]]; then
  SHELL_CONFIG_FILE="$HOME/.zprofile"
else
  SHELL_CONFIG_FILE="$HOME/.bash_profile"
fi

export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"

/bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/Homebrew/install@HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> "$SHELL_CONFIG_FILE"
echo 'export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"' >> "$SHELL_CONFIG_FILE"
echo 'export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"' >> "$SHELL_CONFIG_FILE"
echo 'export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"' >> "$SHELL_CONFIG_FILE"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$SHELL_CONFIG_FILE"

eval $(/opt/homebrew/bin/brew shellenv)