return {
  -- Remove 'vtsls' from automatic setup
  require("mason-lspconfig").setup({
    ensure_installed = {
      -- Other LSPs
      "vtsls", -- Comment or remove this line
    },
  }),
}
