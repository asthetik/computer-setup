# computer-setup

## 安装 homebrew 步骤

### 安装命令行工具（Command Line Tools (CLT) for Xcode）

首先确保Mac系统是否安装了 **Command Line Tools (CLT) for Xcode**

请在终端执行下列命令

```shell
xcode-select --install
```

### 安装 homebrew

`注意，这是一个安装 Homebrew 的脚本，它可以在 Bash 和 Zsh 中都运行`

#### 使用 CDN 节点下载

执行以下脚本（如果无法连接Github，请把脚本拷贝在本地，然后在本地执行）

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/asthetik/computer-setup/master/mac/homebrew/ustc/install.sh)"
```

#### 使用官方默认节点下载

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/asthetik/computer-setup/master/mac/homebrew/install.sh)"
```

### 测试是否安装成功

```shell
brew -v
```

### 替换现有仓库上游

**参考**：

[清华大学Homebrew镜像使用帮助](https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/)  [中科大Homebrew镜像使用帮助](https://mirrors.ustc.edu.cn/help/brew.git.html)

#### 使用中科大镜像源

执行以下脚本（如果无法连接Github，请把脚本拷贝在本地，然后在本地执行）

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/asthetik/computer-setup/blob/master/mac/homebrew/ustc/mirrorSource.sh)"
```

#### 使用清华大学镜像源

执行以下脚本（如果无法连接Github，请把脚本拷贝在本地，然后在本地执行）

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/asthetik/computer-setup/blob/master/mac/homebrew/tuna/mirrorSource.sh)"
```

### 更新 homebrew

```shell
brew update
```

## 下载一些必要的软件

```shell
curl -fsSL https://raw.githubusercontent.com/asthetik/computer-setup/refs/heads/master/mac/apps.txt | xargs brew install --cask
```

## iTerm2

### Get Nerd Fonts

Visit [ronniedroid/getnf](https://github.com/ronniedroid/getnf) for an easy way to install nerd fonts.

### theme

custom theme: [extras/zenburned_onedark.itermcolors](https://raw.githubusercontent.com/asthetik/computer-setup/master/mac/extras/zenburned_onedark.itermcolors)

reference:  [schemes/zenburned.itermcolors](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/zenburned.itermcolors)

## neovim

### install neovim
```shell
brew install neovim
```

### configurar nvim

reference: [nvim-lua/kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

clone and custom: [asthetik/kickstart.nvim](https://github.com/asthetik/kickstart.nvim)
