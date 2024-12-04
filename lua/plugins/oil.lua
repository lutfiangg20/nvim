return {
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = true, -- Use Oil as the default file explorer
    view_options = {
      show_hidden = true, -- Show hidden files
    },
    win_options = {
      signcolumn = "yes:2",
    },
    columns = { "icon", "git_status" },
    keymaps = {
      ["<CR>"] = "actions.select", -- Open file or enter directory
      ["<C-v>"] = "actions.select_vsplit", -- Vertical split
      ["<C-x>"] = "actions.select_split", -- Horizontal split
      ["<C-t>"] = "actions.select_tab", -- Open in new tab
      ["q"] = "actions.close", -- Close Oil
    },
  },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional: Adds icons
  dependencies = { { "echasnovski/mini.icons", opts = {} } }, -- Optional: Adds icons
}
