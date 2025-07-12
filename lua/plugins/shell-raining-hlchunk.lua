-- Doc:  https://github.com/shellRaining/hlchunk.nvim
return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("hlchunk").setup({
			line_num = {
				enable = true,
				style = "#fae40f",
				priority = 10,
				use_treesitter = true,
			},
		})
	end,
}
