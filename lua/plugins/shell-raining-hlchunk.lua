return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("hlchunk").setup({
			line_num = {
				enable = true,
				style = "#806d9c",
				priority = 10,
				use_treesitter = true,
				chars = {
					vertical_line = "|",
				},
			},
		})
	end,
}
