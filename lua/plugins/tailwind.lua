return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {
        filetypes = {
          "templ",
          "html",
          "css",
          "scss",
          "javascript",
          "typescript",
          "javascriptreact",
          "typescriptreact",
          "astro",
          "ejs",
        },
        init_options = {
          userLanguages = {
            templ = "html",
            html = "html",
            ejs = "html",
          },
        },
        settings = {
          tailwindcss = {
            experimental = {
              classRegex = {
                { "cn\\(([^)]*)\\)", "[\"'`]([^\"'`]*?)[\"'`]" },
              },
            },
          },
        },
      },
    },
  },
  -- "roobert/tailwindcss-colorizer-cmp.nvim",
  -- opts = {},
  -- optionally, override the default options:
  -- config = function()
  --   require("tailwindcss-colorizer-cmp").setup({
  --     color_square_width = 2,
  --   })
  -- end,
}
-- {
--   {
--     "hrsh7th/nvim-cmp",
--     optional = true,
--     dependencies = {
--       { "roobert/tailwindcss-colorizer-cmp.nvim", opts = {} },
--     },
--     opts = function(_, opts)
--       -- original LazyVim kind icon formatter
--       local format_kinds = opts.formatting.format
--       opts.formatting.format = function(entry, item)
--         format_kinds(entry, item) -- add icons
--         return require("tailwindcss-colorizer-cmp").formatter(entry, item)
--       end
--     end,
--   },
--   {
--     "neovim/nvim-lspconfig",
--     opts = {
--       servers = {
--         tailwindcss = {
--           filetypes = { "html", "css", "scss", "vue", "javascript", "typescript", "javascriptreact", "typescriptreact" },
--           init_options = {
--             userLanguages = {
--               vue = "html",
--             },
--           },
--         },
--       },
--     },
--   },
-- }
