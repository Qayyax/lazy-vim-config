return {
	"ellisonleao/gruvbox.nvim",
	lazy = true,
	priority = 900, -- change to 1000 when needed
	config = function()
		require("gruvbox").setup({
			transparent_mode = true,
		})
		-- vim.cmd.colorscheme("gruvbox")
	end,
}
