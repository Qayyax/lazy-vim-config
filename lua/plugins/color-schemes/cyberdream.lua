return {
	"scottmckendry/cyberdream.nvim",
	lazy = true,
	priority = 1000,
	config = function()
		require("cyberdream").setup({

			transparent = true,
			italic_comments = true,
		})
	end,
}
