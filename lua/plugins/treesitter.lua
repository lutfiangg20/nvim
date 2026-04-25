return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "lua",
      "javascript",
      "html",
      "css",
      "json",
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
  -- opts = function(_, opts)
  --   local parser_config = require("nvim-treesitter.parsers").parser_configs
  --
  --   -- Parser EJS
  --   parser_config.ejs = {
  --     install_info = {
  --       url = "https://github.com/tree-sitter/tree-sitter-embedded-template",
  --       files = { "src/parser.c" },
  --       branch = "master",
  --     },
  --     filetype = "ejs",
  --   }
  --
  --   opts.ensure_installed = opts.ensure_installed or {}
  --   vim.list_extend(opts.ensure_installed, {
  --     "html",
  --     "javascript",
  --     "ejs",
  --   })
  --
  --   return opts
  -- end,
}
--
-- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
-- --@diagnostic disable-next-line: inject-field
-- parser_config.blade = {
--   install_info = {
--     url = "https://github.com/EmranMR/tree-sitter-blade",
--     files = { "src/parser.c" },
--     branch = "main",
--   },
--   filetype = "blade",
-- }

-- return {
--   -- Add the Tree-sitter plugin
--   {
--     "nvim-treesitter/nvim-treesitter",
--     build = ":TSUpdate",
--     opts = function(_, opts)
--       local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
--
--       -- Add Blade parser configuration
--       parser_config.blade = {
--         install_info = {
--           url = "https://github.com/EmranMR/tree-sitter-blade",
--           files = { "src/parser.c" },
--           branch = "main",
--         },
--         filetype = "blade",
--       }
--
--       opts.ensure_installed = opts.ensure_installed or {}
--       vim.list_extend(opts.ensure_installed, { "php", "html", "blade" })
--
--       return opts
--     end,
--   },
-- }
