-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.autoread = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "http" },
  callback = function()
    local opt = vim.opt
    opt.preserveindent = false
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go" },
  callback = function()
    local opt = vim.opt
    opt.tabstop = 4
    opt.shiftwidth = 4
    opt.expandtab = false
    opt.autoindent = true
    opt.smartindent = true
  end,
})

vim.opt.pumblend = 0
