lspconfig.yamlls.setup({
  settings = {
    yaml = {
      schemas = {
        ["https://json.schemastore.org/springboot.json"] = "/application.yml",
      },
    },
  },
})
