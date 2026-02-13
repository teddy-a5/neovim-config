return {
  "neovim/nvim-lspconfig", -- still needed for now
  config = function()
    vim.lsp.config("gopls", {
      settings = {
        gopls = {
          gofumpt = true,
          staticcheck = true,
          analyses = {
            unusedparams = true,
          },
        },
      },
    })

    vim.lsp.enable("gopls")
  end,
}

