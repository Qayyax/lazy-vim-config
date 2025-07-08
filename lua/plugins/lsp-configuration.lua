return {
  {
    "mason-org/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end
  },
  {
    -- Docs: https://github.com/mason-org/mason-lspconfig.nvim?tab=readme-ov-file#default-configuration
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
      ensure_installed = {"lua_ls", "ts_ls"}
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      --  Docs: https://github.com/neovim/nvim-lspconfig?tab=readme-ov-file#vimlspconfig
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
