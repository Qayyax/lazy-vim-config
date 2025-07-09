-- https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#installation
--
return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		name = "telescope",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			-- Telescope config
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep through all files" })
			vim.keymap.set("n", "<leader><space>", builtin.buffers, { desc = "Show Buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = " [F]ind [H]elp tags" })
			vim.keymap.set("n", "<leader>fq", builtin.quickfix, { desc = " [F]ind [Q]uickfix" })
			vim.keymap.set(
				"n",
				"<leader>/",
				builtin.current_buffer_fuzzy_find,
				{ desc = "[/] Fuzzily search in current buffer" }
			)
			vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "Search Diagnostics" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			-- Docs: https://github.com/nvim-telescope/telescope-ui-select.nvim
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							windblend = 10,
						}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
