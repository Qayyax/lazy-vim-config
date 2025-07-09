vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Configure visual mode indent when pressing >
vim.keymap.set("x", ">", ">gv", { noremap = true, silent = true })

vim.keymap.set("v", "<leader>y", '"+y', {}) -- copy to clipboard

vim.o.hlsearch = false -- removes the highlight after search
vim.o.mouse = "a" -- enables mouse mode
vim.o.breakindent = true -- adds equal indenting to code blocks
vim.o.undofile = true -- saves undo history (especially after you close the file)

-- Case-insensitive search UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.wo.signcolumn = "yes" -- signs like git signs and diagnostics should not disturb display

vim.o.updatetime = 250 -- faster reaction to events (default = 1000)
vim.o.timeoutlen = 300 -- timeout lenght for mapped key sequences (default = 1000)

-- `menuone`: autocomplete menu even if there's only one match
-- `noselect`: don't pre-select any item by default
vim.o.completeopt = "menuone,noselect"

vim.o.termguicolors = true --make sure your terminal support true colors

--  Highlight on yank
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
