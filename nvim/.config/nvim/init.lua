-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("toggleterm").setup({
	size = 40,
	open_mapping = [[<M-i>]],
	insert_mappings = true,
	start_in_insert = true,
	direction = "float",
	float_opts = {
		border = "single",
		width = 200,
		height = 80,
		row = 8,
		col = 8,
		zindex = 1000,
	},
})

vim.opt.shell= "/usr/bin/fish"
vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.scrolloff = 99
