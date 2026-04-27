require("toggleterm").setup({
	size = 40,
	open_mapping = [[<M-i>]],
	insert_mappings = true,
	start_in_insert = true,
	direction = "float",
	float_opts = {
		border = "single",
		width = 0.8,
		height = 0.8,
		row = 0.08,
		col = 0.08,
		zindex = 1000,
	},
})
