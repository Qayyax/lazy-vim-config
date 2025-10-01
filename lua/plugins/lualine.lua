-- docs: https://github.com/nvim-lualine/lualine.nvim
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			sections = {
				lualine_x = { "lsp_status", "filetype" },
			},
			inactive_sections = {
				lualine_b = { "branch", "diff", "diagnostics" },
			},
		})
	end,
}
