return {
  {
    "akinsho/toggleterm.nvim",
    event = "VeryLazy",
    version = "*",
    config = function()
      require("toggleterm").setup({
        shell = "/usr/bin/zsh",
        size = 15,
        open_mapping = [[<C-\>]],
        direction = "float",
        float_opts = {
          border = "curved", -- Choose the border type for float terminal
          width = 600,
          height = 600,
          winblend = 3,
        },
      })
      -- Kiro CLI TUI terminal
      local Terminal = require("toggleterm.terminal").Terminal
      local kiro = Terminal:new({
        cmd = "kiro-cli --tui",
        direction = "float",
        hidden = true,
        float_opts = {
          border = "curved",
          width = math.floor(vim.o.columns * 0.9),
          height = math.floor(vim.o.lines * 0.9),
        },
      })
      vim.keymap.set("n", "<leader>tk", function()
        kiro:toggle()
      end, { desc = "Kiro TUI" })

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
