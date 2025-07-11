return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		-- Tree sitter
		local treesitterConfig = require("nvim-treesitter.configs")
		-- :checkhealth nvim.treesitter for available parsers
		treesitterConfig.setup({
			ensure_installed = { "lua", "javascript", "python", "tsx", "typescript", "markdown", "markdown_inline" },
			sync_install = false,
			auto_intall = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
		require("nvim-ts-autotag").setup({})
	end,
}
