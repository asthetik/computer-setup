# computer-setup

## 安装 homebrew 步骤

### 安装命令行工具（Command Line Tools (CLT) for Xcode）

首先确保Mac系统是否安装了 **Command Line Tools (CLT) for Xcode**

请在终端执行下列命令

```shell
xcode-select --install
```

### 安装 homebrew

这里可选择清华大学镜像或中科大镜像。本人推荐使用中科大镜像，下载速度较快。

**参考**：

​	[清华大学Homebrew镜像使用帮助](https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/)  [中科大Homebrew镜像使用帮助](https://mirrors.ustc.edu.cn/help/brew.git.html)

`注意，MacOS默认使用zsh，如果你使用的是bash，请执行对应的脚本`

#### 使用中科大镜像源

执行以下脚本（如果无法连接Github，请把脚本拷贝在本地，然后在本地执行）

- 对于 zsh 用户

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/asthetik/computer-setup/master/mac/homebrew/ustc/install.sh)"
```
- 对于 bash 用户

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/asthetik/computer-setup/master/mac/homebrew/ustc/install-bash.sh)"
```



#### 使用清华大学镜像源

执行以下脚本（如果无法连接Github，请把脚本拷贝在本地，然后在本地执行）

- 对于 zsh 用户

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/asthetik/computer-setup/blob/master/mac/homebrew/tuna/install.sh)"
```
- 对于 bash 用户

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/asthetik/computer-setup/master/mac/homebrew/tuna/install-bash.sh)"
```



### 测试是否安装成功

```shell
brew -v
```



### 替换现有仓库上游

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

