return {
  "mg979/vim-visual-multi",
  event = { "BufRead", "InsertEnter", "BufNewFile" },
  branch = "master",
  lazy = true,
  init = function()
    vim.g.VM_mouse_mappings = 1
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>",
      ["Find Subword Under"] = "<C-d>",
      ["Select Cursor Down"] = "<M-C-Down>",
      ["Select Cursor Up"] = "<M-C-Up>",
      ["Undo"] = "u",
      ["Redo"] = "<C-r",
    }
  end,
}
