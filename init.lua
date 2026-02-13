-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")


vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require("conform").format()
  end,
})

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.tabstop = 4        -- how many spaces a <Tab> counts for
vim.opt.shiftwidth = 4     -- spaces used for autoindent
vim.opt.expandtab = false  -- keep real tabs (Go standard)
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.shortmess:append("I")
