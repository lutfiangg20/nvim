-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  callback = function()
    if vim.bo.buftype ~= "nofile" then
      vim.cmd("checktime")
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.blade.php" },
  callback = function()
    vim.bo.filetype = "blade"
  end,
})

vim.api.nvim_create_user_command("RunJava", function()
  local file = vim.fn.expand("%:p")
  local class = vim.fn.expand("%:t:r")

  -- compile
  local result = os.execute("javac " .. file)
  if result == 0 then
    vim.cmd("!java " .. class)
  else
    print("❌ Compile error")
  end
end, {})
