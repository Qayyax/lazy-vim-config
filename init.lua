vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "

-- Key Binds
vim.keymap.set("i", "jk", "<Esc>", {desc = "jk toggles esc in insert mode"})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
local plugins = {
  {"catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    name = 'telescope',
    dependencies = {'nvim-lua/plenary.nvim'}
  }, 
  {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build=":TSUpdate"},
}

require("lazy").setup(plugins, opts)

-- Theme & Color scheme related plugs 
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin-mocha"
vim.o.background = "dark"

-- Telescope config
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Tree sitter
  local treesitterConfig = require("nvim-treesitter.configs")
  -- available parsers
    -- - bash                ✓ ✓ ✓ . ✓
    -- - c                   ✓ ✓ ✓ ✓ ✓
    -- - cpp                 ✓ ✓ ✓ ✓ ✓
    -- - go                  ✓ ✓ ✓ ✓ ✓
    -- - javascript          ✓ ✓ ✓ ✓ ✓
    -- - lua                 ✓ ✓ ✓ ✓ ✓
    -- - markdown            ✓ . ✓ ✓ ✓
    -- - markdown_inline     ✓ . . . ✓
    -- - python              ✓ ✓ ✓ ✓ ✓
    -- - query               ✓ ✓ ✓ ✓ ✓
    -- - rust                ✓ ✓ ✓ ✓ ✓
    -- - tsx                 ✓ ✓ ✓ ✓ ✓
    -- - typescript          ✓ ✓ ✓ ✓ ✓
    -- - vim                 ✓ ✓ ✓ . ✓
    -- - vimdoc              ✓ . . . ✓
  treesitterConfig.setup({
    ensure_installed = {"lua", "javascript", "python", "tsx", "typescript", "go", "markdown", "markdown_inline"},
    sync_install = false,
    auto_intall = true,
    highlight = { enable = true },
    indent = { enable = true }
  })
