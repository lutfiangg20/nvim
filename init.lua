-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- vim.opt.shell = "pwsh.exe"
-- vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
-- vim.opt.shellquote = ""
-- vim.opt.shellxquote = ""
vim.opt.shell = "/usr/bin/zsh"

-- read folder insinde ()
vim.opt.isfname:append({ "(", ")" })

--yank to system
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })

require("luasnip.loaders.from_vscode").lazy_load({ path = "C:/Users/acer/AppData/Local/nvim/lua/snippets" }) -- Load snippets in VSCode format

-- Enable line wrapping with proper configurations
-- vim.o.wrap = true -- Enable line wrapping
-- vim.o.linebreak = true -- Wrap at word boundaries
-- vim.o.breakindent = true -- Indent wrapped lines
-- vim.o.wrapmargin = 4 -- Wrap text 4 characters before the edge

-- vim.opt.fileformats = { "unix", "dos" }

-- vim.cmd("highlight CursorLine guibg=#333333")

-- vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#444444" })
--

vim.lsp.config("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        features = "all", -- Enable all features
      },
    },
  },
})
