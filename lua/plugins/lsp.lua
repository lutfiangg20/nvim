return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Add all other servers you want but explicitly remove tsserver
      tsserver = false,
      gopls = {
        settings = {
          gopls = {
            buildFlags = { "-tags=wireinject" },
          },
        },
      },
    },
  },
}
