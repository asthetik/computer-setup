#!/bin/bash

export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
for tap in core cask{,-fonts,-drivers,-versions} command-not-found; do
    brew tap --custom-remote --force-auto-update "homebrew/${tap}" "https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-${tap}.git"
done