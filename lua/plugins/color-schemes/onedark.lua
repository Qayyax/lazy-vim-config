-- Docs https://github.com/navarasu/onedark.nvim
return {
	"navarasu/onedark.nvim",
	lazy = true,
	priority = 1000,
	config = function()
		require("onedark").setup({
			style = "darker",
			transparent = true,
			code_style = {
				functions = "bold",
			},
		})
		-- require("onedark").load()
		-- vim.cmd.colorscheme("onedark")
	end,
}
