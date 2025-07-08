return {
  "nvimtools/none-ls.nvim",
   dependencies = {'nvim-lua/plenary.nvim'},
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.markdownlint,
    })

  end
}
