#!/bin/bash

export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"

/bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/Homebrew/install@HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
echo 'export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"' >> ~/.zprofile
echo 'export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"' >> ~/.zprofile
echo 'export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"' >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

eval $(/opt/homebrew/bin/brew shellenv)