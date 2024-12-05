-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.shell = "pwsh.exe"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

require("luasnip.loaders.from_vscode").lazy_load({ path = "C:/Users/acer/AppData/Local/nvim/lua/snippets" }) -- Load snippets in VSCode format

-- Enable line wrapping with proper configurations
-- vim.o.wrap = true -- Enable line wrapping
-- vim.o.linebreak = true -- Wrap at word boundaries
-- vim.o.breakindent = true -- Indent wrapped lines
-- vim.o.wrapmargin = 4 -- Wrap text 4 characters before the edge

-- vim.opt.fileformats = { "unix", "dos" }

-- vim.cmd("highlight CursorLine guibg=#333333")

-- vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#444444" })
