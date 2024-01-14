local opt = vim.opt

-- 行号
opt.number = true
opt.relativenumber = true

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = true

-- 光标行
opt.cursorline = true

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

-- 复制时文本高亮
vim.api.nvim_create_autocmd('TextYankPost',{
  callback=function()
    vim.highlight.on_yank()
  end,
})
