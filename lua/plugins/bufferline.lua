return {
	"akinsho/bufferline.nvim",
	version = "4.*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				style_preset = bufferline.style_preset.minimal,
				diagnostics = "nivm_lsp",
				-- separator_style = "slope",
				numbers = "ordinal",
				indicator = {
					style = "underline",
				},
				groups = {
					items = {
						require("bufferline.groups").builtin.pinned:with({ icon = "󰐃 " }),
					},
				},
				highlights = {
					buffer_selected = {
						bold = true,
						italic = true,
					},
				},
			},
		})
	end,

	-- pin buffer
	vim.keymap.set("n", "<leader>tp", ":BufferLineTogglePin<CR>"),
	-- Pick which buffer to move to based on letters
	vim.keymap.set("n", "<leader>bb", ":BufferLinePick<CR>"),
	-- Close buffer to move to based on letters
	vim.keymap.set("n", "<leader>bc", ":BufferLinePickClose<CR>"),
	-- Go to the next buffer in the bufferline
	vim.keymap.set("n", "<leader>bn", ":BufferLineCycleNext<CR>"),
	-- Go to the prev buffer in the bufferline
	vim.keymap.set("n", "<leader>bp", ":BufferLineCyclePrev<CR>"),
	-- Move buffer to the next position
	vim.keymap.set("n", "<leader>bl", ":BufferLineMoveNext<CR>"),
	-- Move buffer to the previous position
	vim.keymap.set("n", "<leader>bh", ":BufferLineMovePrev<CR>"),
}
