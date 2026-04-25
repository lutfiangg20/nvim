return {
  "neovim/nvim-lspconfig",
  config = function()
    require("lspconfig").intelephense.setup({})
    require("lspconfig").phpactor.setup({
      autostart = false, -- Only start manually
    })
    require("lspconfig").tailwindcss.setup({
      filetypes = {
        "html",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "php",
        "blade",
      },
      init_options = {
        userLanguages = {
          php = "html", -- This is the critical line for PHP support
          blade = "html",
        },
      },
      settings = {
        tailwindCSS = {
          experimental = {
            classRegex = {
              -- PHP-specific patterns
              { "class=[\"']([^\"']*)[\"']", "[\"'`]([^\"'`]*).*?[\"'`]" },
              { "->class\\([\"']([^\"']*)[\"']\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
            },
          },
          includeLanguages = {
            php = "html",
          },
        },
      },
    })
  end,
}
