#!/bin/bash

export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"

# 从本镜像下载安装脚本并安装 Homebrew / Linuxbrew
git clone https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/install.git brew-install

/bin/bash brew-install/install.sh

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
echo 'export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"' >> ~/.zprofile
echo 'export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"' >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

eval $(/opt/homebrew/bin/brew shellenv)