-- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
--
-- --@diagnostic disable-next-line: inject-field
-- parser_config.blade = {
--   install_info = {
--     url = "https://github.com/EmranMR/tree-sitter-blade",
--     files = { "src/parser.c" },
--     branch = "main",
--   },
--   filetype = "blade",
-- }

return {
  -- Add the Tree-sitter plugin
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = function(_, opts)
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

      -- Add Blade parser configuration
      parser_config.blade = {
        install_info = {
          url = "https://github.com/EmranMR/tree-sitter-blade",
          files = { "src/parser.c" },
          branch = "main",
        },
        filetype = "blade",
      }

      return opts
    end,
  },
}
