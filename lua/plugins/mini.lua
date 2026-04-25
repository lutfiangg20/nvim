return {
  {
    "nvim-mini/mini.files",
    version = false, -- Use the latest version
    config = function()
      require("mini.files").setup({
        -- Configuration options
        windows = {
          preview = true, -- Enable preview window
        },
        options = {
          use_as_default_explorer = false, -- Use as default file explorer
          respect_gitignore = false,
        },
      })
    end,
    vim.keymap.set("n", "<leader>o", function()
      require("mini.files").open(nil, true)
    end, { desc = "Open Mini File Explorer" }),
  },
}
