return {
  -- LSP
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
  },

  -- Auto install tools
  {
    "williamboman/mason.nvim",
    config = true
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = true
  },

  -- Autocomplete
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip"
    }
  },

  -- Formatting
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          go = { "gofmt" },
        },
      })
    end
  },
}

