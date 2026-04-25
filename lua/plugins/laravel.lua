return {
  vim.lsp.enable("laravel_ls"),
  vim.lsp.config("laravel_ls", {
    cmd = { "laravel-ls" },
    filetypes = { "blade.php", "php" },
    root_markers = {
      "artisan",
    },
  }),
}
