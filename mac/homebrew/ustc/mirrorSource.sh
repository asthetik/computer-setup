#!/bin/bash

export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
brew tap --custom-remote --force-auto-update homebrew/core https://mirrors.ustc.edu.cn/homebrew-core.git
brew tap --custom-remote --force-auto-update homebrew/cask https://mirrors.ustc.edu.cn/homebrew-cask.git
brew tap --custom-remote --force-auto-update homebrew/cask-fonts https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-cask-fonts.git
brew tap --custom-remote --force-auto-update homebrew/cask-drivers https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-cask-drivers.git
brew tap --custom-remote --force-auto-update homebrew/cask-versions https://mirrors.ustc.edu.cn/homebrew-cask-versions.git
brew tap --custom-remote --force-auto-update homebrew/command-not-found https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-command-not-found.git