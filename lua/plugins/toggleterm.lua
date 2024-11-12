return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        shell = "pwsh.exe",
        size = 15,
        open_mapping = [[<C-\>]],
        direction = "horizontal",
        float_opts = {
          border = "curved", -- Choose the border type for float terminal
          width = 100,
          height = 10,
          winblend = 3,
        },
      })
      -- Key mappings for toggling terminal splits
      local function set_terminal_keymaps()
        local opts = { noremap = true }
        vim.api.nvim_set_keymap("t", "<esc>", [[<C-\><C-n>]], opts) -- Exit terminal mode
        vim.api.nvim_set_keymap("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", opts) -- Open horizontal terminal
        vim.api.nvim_set_keymap("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", opts) -- Open vertical terminal
      end

      -- Apply terminal key mappings on Vim startup
      set_terminal_keymaps()
    end,
  },
}
