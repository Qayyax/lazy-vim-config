-- https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#installation
--
return {
	{
		"nvim-telescope/telescope.nvim",
		name = "telescope",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
		-- config = function()
		-- 	-- Telescope config
		-- 	local builtin = require("telescope.builtin")
		-- 	vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
		-- 	vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep through all files" })
		-- 	vim.keymap.set("n", "<leader><space>", builtin.buffers, { desc = "Show Buffers" })
		-- 	vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = " [F]ind [H]elp tags" })
		-- 	vim.keymap.set("n", "<leader>fq", builtin.quickfix, { desc = " [F]ind [Q]uickfix" })
		-- 	vim.keymap.set(
		-- 		"n",
		-- 		"<leader>/",
		-- 		builtin.current_buffer_fuzzy_find,
		-- 		{ desc = "[/] Fuzzily search in current buffer" }
		-- 	)
		-- 	vim.keymap.set("n", "<leader>q", builtin.diagnostics, { desc = "Search Diagnostics" })
		--
		-- 	-- LSP related
		-- 	vim.keymap.set("n", "<leader>e", function()
		-- 		builtin.diagnostics({ bufnr = 0 })
		-- 	end, { desc = "List Diagnostics for current buffer" })
		--
		-- 	vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "Go to definition of word under the cursor" })
		-- 	vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "Go to references of word under the cursor" })
		-- 	vim.keymap.set(
		-- 		"n",
		-- 		"gi",
		-- 		builtin.lsp_implementations,
		-- 		{ desc = "Go to implementation of word under the cursor" }
		-- 	)
		-- 	vim.keymap.set(
		-- 		"n",
		-- 		"gt",
		-- 		builtin.lsp_type_definitions,
		-- 		{ desc = "Go to definition of type of the word under the cursor" }
		-- 	)
		-- end,
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
