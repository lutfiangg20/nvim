return {
  "kdheepak/lazygit.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    -- Keybinding: tekan <leader>gg di normal mode
    vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { silent = true, noremap = true })
  end,
}
