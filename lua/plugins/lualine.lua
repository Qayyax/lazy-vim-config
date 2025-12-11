-- docs: https://github.com/nvim-lualine/lualine.nvim
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			sections = {
				lualine_x = { "lsp_status", "filetype" },
				lualine_y = {},
			},
			inactive_sections = {
				lualine_b = { "branch", "diff", "diagnostics" },
			},
			options = {
				section_separators = { left = "|>", right = "<|" },
				component_separators = { left = "|>", right = "<|" },
			},
		})
	end,
}
