return {
  "olimorris/onedarkpro.nvim",
  priority = 1000,
  config = function()
    require("onedarkpro").setup({
      options = {
        transparency = false,
      },
    })

    vim.opt.background = "dark"
    vim.cmd.colorscheme("onedark_dark")
  end,
}
