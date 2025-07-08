return {
  {
    "mason-org/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    }
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- local lspconfig = require("lspconfig")
      -- lspconfig.lua_ls.setup({})
      -- vim.lsp.config("lua_ls", {})
      vim.lsp.enable("lua_ls")

      -- Keybinds
      -- docs here https://neovim.io/doc/user/lsp.html#vim.lsp.buf.definition()
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
    end
  }
}
