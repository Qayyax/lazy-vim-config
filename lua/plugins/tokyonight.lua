return {
	"folke/tokyonight.nvim",
	lazy = true, -- change to false when needed
	priority = 900, -- change to 900 when needed
	opts = {
		style = "night",
		-- transparent = true,
		-- styles = {
		-- 	sidebars = "transparent",
		-- 	floats = "transparent",
		-- },
	},
	config = function(_, opts)
		local tokyonight = require("tokyonight")
		tokyonight.setup(opts)
		tokyonight.load()
		-- vim.cmd.colorscheme("tokyonight")
	end,
}
