return {
  vim.lsp.config("rust_analyze", {
    settings = {
      ["rust-analyzer"] = {
        procMacro = {
          ignored = {
            leptos_macro = {
              "server",
            },
          },
        },
      },
    },
  }),
}
