-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.shell = "pwsh.exe"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""
-- vim.cmd("highlight CursorLine guibg=#333333")

-- vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#444444" })
