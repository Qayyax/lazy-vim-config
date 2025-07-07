vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")

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

require("lazy").setup("plugins")

-- Theme & Color scheme related plugs 
-- https://github.com/catppuccin/nvim?tab=readme-ov-file
require("catppuccin").setup({
  flavour = "auto",
  background = {
    dark = "mocha",
  },
  no_italic = false,
  no_bold = false,
  transparent_background = true, 
  styles = {
    comments = {"italic"},
    conditionals = {"italic"},
  },
})
vim.cmd.colorscheme "catppuccin"

-- Telescope config
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Tree sitter
  local treesitterConfig = require("nvim-treesitter.configs")
  -- :checkhealth nvim.treesitter for available parsers
  treesitterConfig.setup({
    ensure_installed = {"lua", "javascript", "python", "tsx", "typescript", "go", "markdown", "markdown_inline"},
    sync_install = false,
    auto_intall = true,
    highlight = { enable = true },
    indent = { enable = true }
  })

-- Neotree
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
      end
    },
  }
})
vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>')
