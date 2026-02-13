return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
  opts = function(_, opts)
    local actions = require("telescope.actions")

    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      layout_strategy = "horizontal",
      layout_config = {
        preview_width = 0.6,
      },
      sorting_strategy = "ascending",
      winblend = 0,
      mappings = {
        i = {
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
          ["<Esc>"] = actions.close,
        },
      },
    })

    opts.pickers = vim.tbl_deep_extend("force", opts.pickers or {}, {
      find_files = {
        hidden = true,
      },
    })

    return opts
  end,
}
