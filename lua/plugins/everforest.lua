-- Wiki: https://github.com/neanias/everforest-nvim
return {
	"neanias/everforest-nvim",
	version = false,
	lazy = true,
	priority = 1000,
	config = function()
		require("everforest").setup({
			background = "hard",
			transparent_background_level = 2,
		})
		-- vim.cmd.colorscheme("everforest")
	end,
}
