vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Vim options
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

-- Keymaps

-- Configure visual mode indent when pressing >
vim.keymap.set("x", ">", ">gv", { noremap = true, silent = true })

vim.keymap.set("v", "<leader>y", '"+y', {}) -- copy to clipboard

-- Disable <space> in normal and visual mode
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Smarter vertical movement with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- C-w map to <leader> (Navigation - spliting panes)
vim.keymap.set("n", "<leader>v", "<C-w>v", {}) -- split window vertically
vim.keymap.set("n", "<leader>-", "<C-w>s", {}) -- split window horizontally
vim.keymap.set("n", "<leader>=", "<C-w>=", {}) -- split window evenly
vim.keymap.set("n", "<leader>x", "<C-w>q", {}) -- close window
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", {}) -- navigate to top window
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", {}) -- navigate to bottom window
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", {}) -- navigate to right window
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>", {}) -- navigate to left window

--  Highlight on yank
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.hl.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
