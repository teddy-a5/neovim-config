return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local dashboard = require("alpha.themes.dashboard")


    dashboard.section.header.val = {
      "                           ",
      "          NEOVIM           ",
      "                           ",
    }


    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
      dashboard.button("n", "  New file", ":ene <BAR> startinsert<CR>"),
      dashboard.button("c", "  Config", ":edit ~/.config/nvim/init.lua<CR>"),
      dashboard.button("l", "󰒲  Lazy", ":Lazy<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }




    dashboard.opts.opts.noautocmd = true

    require("alpha").setup(dashboard.opts)
  end,
}
