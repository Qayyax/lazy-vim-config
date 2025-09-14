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
	vim.keymap.set("n", "<leader>bb", ":BufferLineGoToBuffer "),
}
