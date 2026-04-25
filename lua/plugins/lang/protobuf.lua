return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bufls = {
          cmd = { "bufls" },
          filetypes = { "proto" },
          root_dir = require("lspconfig.util").root_pattern("buf.yaml", ".git"),
        },
      },
    },
  },
}
