return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		indent = { enable = true },
		highlight = { enable = true },
		folds = { enable = true },
		ensure_installed = {
			"lua",
			"javascript",
			"python",
			"tsx",
			"typescript",
			"markdown",
			"markdown_inline",
			"css",
			"html",
			"norg",
			"scss",
			"svelte",
			"typst",
			"vue",
		},
		auto_install = true,
	},
	config = function()
		require("nvim-ts-autotag").setup({})
	end,
}
