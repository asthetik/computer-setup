
local opt=vim.opt
opt.number=true
opt.relativenumber=true

vim.api.nvim_create_autocmd('TextYankPost',{
	callback=function()
		vim.highlight.on_yank({
			higroup="IncSearch",
			timeout=300
		})
	end
})
