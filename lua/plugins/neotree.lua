-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"folke/snacks.nvim",
	},
	lazy = false,

	config = function()
		local neotree = require("neo-tree")
		neotree.setup({
			event_handlers = {
				{
					event = "file_opened",
					handler = function(file_path)
						-- auto close
						-- vimc.cmd("Neotree close")
						-- OR
						require("neo-tree.command").execute({ action = "close" })
					end,
				},
			},
		})

		-- Key bindings
		vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>")
		vim.keymap.set("n", "<leader>gs", ":Neotree float git_status<CR>")
	end,
}
