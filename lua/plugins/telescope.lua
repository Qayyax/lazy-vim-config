-- https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#installation
--
return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  name = 'telescope',
  dependencies = {'nvim-lua/plenary.nvim'},
  config = function ()
    -- Telescope config
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>fq', builtin.quickfix, { desc = 'Telescope quickfix list' })
  end
} 

