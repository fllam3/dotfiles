require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- plugins - lsp

map("n", "<leader>ms","<cmd>Mason<CR>", { desc = "Mason"})

-- nav
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("i", "kk", "<ESC>")
map("i", "jk", "<ESC>")
map({"n", "v", "i"},  "<M-q>", "<cmd>qa!<CR>", { desc = "general no save & quit all" })
map("n", "<leader>wq","<cmd>wqa!<CR>", { desc = "Write all and exit"} )
map("n", "<leader>wf","<cmd>w<CR>", { desc = "Write file"} )
map("n", "<leader>we","<cmd>wq<CR>", { desc = "Write file and exit"} )
map("n", "<leader>wa","<cmd>wa<CR>", { desc = "Write all"} )

-- terminal

map({"n", "t"}, "<M-i>", function()
	require("nvchad.term").toggle({
	pos = "float",
	id = "floatTerm",
	float_opts = {
		width = 0.8,
		height = 0.9,
		row = 0.05,
		col = 0.08,
	},
	})
end, { desc = "toggle flaot term" })
-- tabs
map("n", "<leader>ta", "<cmd>tabnew<CR>", { desc = "New tab"})
map("n", "<leader>tt", "<cmd>tabnew %<CR>", { desc = "Open current buf in new tab"})
map("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close tab"})
map("n", "<leader>sq", "<cmd>q<CR>", { desc = "Close split"})

map("n", "<leader>tj", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "New term down" })

map("n", "<leader>tl", function()
  require("nvchad.term").new { pos = "vsp" }
end, { desc = "New term right" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })
map("n", "<leader>sn", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<leader>sr", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

-- Spectre
map('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})
map('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})
map('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
map('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})
-- Telescope

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })

-- whichkey
map("n", "<leader>hk", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

--map("n", "<leader>hk", function()
--  vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
--end, { desc = "whichkey query lookup" })
