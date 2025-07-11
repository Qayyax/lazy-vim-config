-- Docs: https://github.com/code-biscuits/nvim-biscuits

return {
	"code-biscuits/nvim-biscuits",
	requires = {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	},
	opts = {
		-- Docs for the events: https://vimdoc.sourceforge.net/htmldoc/autocmd.html#autocmd-events
		on_events = { "InsertLeave" },
		toggle_keybind = "<leader>sb", -- show biscuits
		cursor_line_only = true,
	},
}
